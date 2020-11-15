package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.NhaCungCapModel;
import com.webshop.servlet.model.NhanVienModel;

public interface INhaCungCapService {
	NhaCungCapModel save(NhaCungCapModel nhaCungCapModel);

	boolean update(NhaCungCapModel nhaCungCapModel);

	void delete(Long[] ids);

	List<NhaCungCapModel> findAll(Pageable pageable);

	int getTotalItem();
}
