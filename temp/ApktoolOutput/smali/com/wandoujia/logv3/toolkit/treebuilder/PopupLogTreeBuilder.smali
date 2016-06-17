.class public final Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;
.super Ljava/lang/Object;
.source "PopupLogTreeBuilder.java"

# interfaces
.implements Lepa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;
    .locals 2
    .parameter

    .prologue
    .line 140
    instance-of v0, p0, Lcom/wandoujia/logv3/toolkit/DropDownListView;

    if-eqz v0, :cond_0

    .line 141
    check-cast p0, Lcom/wandoujia/logv3/toolkit/DropDownListView;

    .line 150
    :goto_0
    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 144
    :goto_1
    if-eqz v0, :cond_2

    .line 145
    instance-of v1, v0, Lcom/wandoujia/logv3/toolkit/DropDownListView;

    if-eqz v1, :cond_1

    .line 146
    check-cast v0, Lcom/wandoujia/logv3/toolkit/DropDownListView;

    move-object p0, v0

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Leoa;
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;->b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified view must be child of DropDownListView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;->b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The anchor view of the popup window must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
