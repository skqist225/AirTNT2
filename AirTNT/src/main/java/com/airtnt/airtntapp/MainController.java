package com.airtnt.airtntapp;

import java.util.List;

import com.airtnt.airtntapp.amentity.AmentityService;
import com.airtnt.airtntapp.category.CategoryService;
import com.airtnt.airtntapp.room.RoomPrivacyService;
import com.airtnt.airtntapp.room.RoomService;
import com.airtnt.airtntapp.user.UserService;
import com.airtnt.airtntapp.user.admin.UserNotFoundException;
import com.airtnt.entity.Amentity;
import com.airtnt.entity.Category;
import com.airtnt.entity.Room;
import com.airtnt.entity.RoomPrivacy;
import com.airtnt.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

@Controller
public class MainController {
    @Autowired
    private CategoryService categoryService;

    @Autowired
    private RoomService roomService;

    @Autowired
    private UserService userService;

    @Autowired
    private RoomPrivacyService roomPrivacyService;

    @Autowired
    private AmentityService amentityService;

    @GetMapping("/")
    public String index(@Param("categoryId") Integer categoryId,
            @AuthenticationPrincipal UserDetails userDetails,
            Model model) {
        if (categoryId == null) {
            return "redirect:/?categoryId=1";
        }

        // Category
        List<Category> categories = categoryService.getAllCategory();
        model.addAttribute("categories", categories);

        // User's favorite room ids
        User user = null;
        if (userDetails != null) {
            user = userService.getByEmail(userDetails.getUsername());
            if (user.hasRole("Admin"))
                return "redirect:/admin/";
            Integer[] roomIds = new Integer[user.getRooms().size()];
            int i = 0;
            for (Room r : user.getRooms())
                roomIds[i++] = r.getId();
            model.addAttribute("wishlists", roomIds);
        }

        List<Room> rooms = roomService.getRoomsByCategoryId(categoryId, true, 1);
        model.addAttribute("rooms", rooms);
        if (user == null)
            model.addAttribute("user", null);
        else
            model.addAttribute("user", user.getFullName());

        float averageRoomPrice = 0;
        if (rooms.size() > 0) {
            for (Room room : rooms) {
                averageRoomPrice += room.getPrice();
            }
            averageRoomPrice /= rooms.size();
            model.addAttribute("averageRoomPrice", averageRoomPrice);
        } else
            model.addAttribute("averageRoomPrice", 0);

        List<Amentity> amentities = amentityService.getAllAmentities();
        model.addAttribute("amentities", amentities);

        List<RoomPrivacy> roomPrivacies = roomPrivacyService.listAll();
        model.addAttribute("roomPrivacies", roomPrivacies);

        return "index";
    }

    @GetMapping("/login")
    public String viewLoginPage() throws UserNotFoundException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || authentication instanceof AnonymousAuthenticationToken) {
            return "login";
        }

        return "redirect:/";
    }
}
