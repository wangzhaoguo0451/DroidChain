.class public Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "AutoHideInputMethodFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/wandoujia/base/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v1, Ldrl;

    invoke-direct {v1}, Ldrl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    return-void
.end method
