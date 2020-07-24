// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itens_vendidos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItensVendidosController on _ItensVendidosControllerBase, Store {
  final _$paginationModelAtom =
      Atom(name: '_ItensVendidosControllerBase.paginationModel');

  @override
  PaginationModel get paginationModel {
    _$paginationModelAtom.reportRead();
    return super.paginationModel;
  }

  @override
  set paginationModel(PaginationModel value) {
    _$paginationModelAtom.reportWrite(value, super.paginationModel, () {
      super.paginationModel = value;
    });
  }

  final _$filtroItensModelAtom =
      Atom(name: '_ItensVendidosControllerBase.filtroItensModel');

  @override
  FiltroItensModel get filtroItensModel {
    _$filtroItensModelAtom.reportRead();
    return super.filtroItensModel;
  }

  @override
  set filtroItensModel(FiltroItensModel value) {
    _$filtroItensModelAtom.reportWrite(value, super.filtroItensModel, () {
      super.filtroItensModel = value;
    });
  }

  final _$_ItensVendidosControllerBaseActionController =
      ActionController(name: '_ItensVendidosControllerBase');

  @override
  dynamic getTabelaItensVendidos() {
    final _$actionInfo =
        _$_ItensVendidosControllerBaseActionController.startAction(
            name: '_ItensVendidosControllerBase.getTabelaItensVendidos');
    try {
      return super.getTabelaItensVendidos();
    } finally {
      _$_ItensVendidosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
paginationModel: ${paginationModel},
filtroItensModel: ${filtroItensModel}
    ''';
  }
}
