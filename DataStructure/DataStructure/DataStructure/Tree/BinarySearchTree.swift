//
//  BinarySearchTree.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/29/24.
//

import Foundation

/*
정렬조건: 본인 왼쪽의 노드는 자신보다 작아야하고 오른쪽은 자신보다 커야한다.

추가방법: 자신보다 작으면 왼쪽으로 이동, 크면 오른쪽으로 이동, 따로 재정렬은 없음 그냥 이 규칙대로 쭉가서 leaf노드에 추가하면됨

삭제방법:
 자식노드가 없는경우: 그냥 자신을 지우면 된다.
 자식노드가 하나인 경우: 자신의 자리에 자식노드를 이동시키면 됨
 자식노드가 많은 경우: 대상 노드를 지우고 대상노드의 왼쪽 가지에서 최대값을 그 자리로 이동시킴
 
검색방법:
 루트노드에서 시작 대상데이터보다 작으면 왼쪽 크면 오른쪽으로 이동, leaf노드까지 간 경우(next = nil) 검색 실패(데이터 없음)
*/
