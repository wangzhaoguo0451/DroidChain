.class public final Letv;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Letv;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Letv;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Letv;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->dismiss()V

    .line 493
    :cond_0
    return-void
.end method
