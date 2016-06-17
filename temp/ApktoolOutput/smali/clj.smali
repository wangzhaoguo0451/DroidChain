.class public final Lclj;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lclj;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 388
    if-nez p2, :cond_0

    .line 389
    iget-object v0, p0, Lclj;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->m:Lcjo;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lclj;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->m:Lcjo;

    invoke-interface {v0, p2}, Lcjo;->a(Z)V

    .line 394
    :cond_0
    return-void
.end method
