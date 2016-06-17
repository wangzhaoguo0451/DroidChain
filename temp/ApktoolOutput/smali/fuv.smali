.class public final Lfuv;
.super Ljava/lang/Object;
.source "GiftListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/gift/fragment/GiftListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/fragment/GiftListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lfuv;->a:Lcom/wandoujia/p4/gift/fragment/GiftListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lfuv;->a:Lcom/wandoujia/p4/gift/fragment/GiftListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->a(Landroid/content/Context;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;Z)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "gift"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 122
    iget-object v1, p0, Lfuv;->a:Lcom/wandoujia/p4/gift/fragment/GiftListFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    goto :goto_0
.end method
