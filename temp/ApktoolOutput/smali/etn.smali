.class public final Letn;
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
    .line 243
    iput-object p1, p0, Letn;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Letn;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->a(Landroid/content/Context;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;Z)V

    .line 247
    return-void
.end method
