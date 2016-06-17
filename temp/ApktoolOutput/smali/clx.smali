.class public final Lclx;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lclx;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lclx;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->d(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    .line 267
    iget-object v0, p0, Lclx;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lclx;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    invoke-interface {v0, p1}, Lcjr;->onViewWidgetClicked(Landroid/view/View;)V

    .line 270
    :cond_0
    return-void
.end method
