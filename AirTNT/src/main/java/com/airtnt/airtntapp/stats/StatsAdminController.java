package com.airtnt.airtntapp.stats;

import com.airtnt.airtntapp.booking.BookingService;
import com.airtnt.airtntapp.room.RoomService;
import com.airtnt.airtntapp.user.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class StatsAdminController {
    @Autowired
    UserService userService;
    @Autowired
    RoomService roomService;
    @Autowired
    BookingService bookingService;

    @GetMapping("/stats")
    public String stats(Model model){
        Integer numberOfUsers = userService.getNumberOfUser();
        Integer numberOfRooms = roomService.getNumberOfRoom();
        Integer numberOfBookings = bookingService.getNumberOfBooking();
        Integer totalRevenue = bookingService.getTotalRevenue();
        Integer numberOfBookingsInLastMonths = bookingService.getNumberOfBookingInLastMonth();
        Integer totalRevenueInLastMonths = bookingService.getTotalRevenueOfBookingInLastMonth();

        model.addAttribute("numberOfUsers", numberOfUsers);
        model.addAttribute("numberOfRooms", numberOfRooms);
        model.addAttribute("numberOfBookings", numberOfBookings);
        model.addAttribute("totalRevenue", totalRevenue);
        model.addAttribute("numberOfBookingsInLastMonths", numberOfBookingsInLastMonths);
        model.addAttribute("totalRevenueInLastMonths", totalRevenueInLastMonths);
        return "stats/stats";
    }

    @PostMapping("/stats/checkRevenue")
    public String checkRevenue(Model model,
        @Param("month") Integer month,
        @Param("year") Integer year
        )
    {
        Integer revenueInSpecificMonth= bookingService.getRevenueInSpecificMonthYear(month, year);
        model.addAttribute("revenueInSpecificMonth", revenueInSpecificMonth);
        model.addAttribute("month", month);
        model.addAttribute("year", year);
        return "stats/checkRevenue";
    }

    @PostMapping("/stats/checkRevenueYear")
    public String checkRevenueYear(Model model,
        @Param("year") Integer year
        )
    {
        Integer revenueInSpecificYear= bookingService.getRevenueInSpecificYear(year);
        model.addAttribute("revenueInSpecificYear", revenueInSpecificYear);
        model.addAttribute("year", year);
        return "stats/checkRevenueYear";
    }
}
