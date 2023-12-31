package asm.controller2;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import asm.bean.Order;
import asm.service.OrderService;
import com.fasterxml.jackson.databind.JsonNode;

@CrossOrigin("*")
@RestController
public class OrderRestController {
	@Autowired OrderService oService;
	@PostMapping("/rest/order")
	public Order create(@RequestBody JsonNode order) {
		return oService.create(order);
	}
}
