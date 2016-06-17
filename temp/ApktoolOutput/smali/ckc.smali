.class public final Lckc;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lckc;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lckc;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->m:Lcjo;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lckc;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->m:Lcjo;

    invoke-interface {v0, p2}, Lcjo;->a(Z)V

    .line 187
    :cond_0
    return-void
.end method
