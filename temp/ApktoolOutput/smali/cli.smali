.class public final Lcli;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcli;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcli;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcli;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    invoke-interface {v0, p1}, Lcjr;->onViewWidgetClicked(Landroid/view/View;)V

    .line 380
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
