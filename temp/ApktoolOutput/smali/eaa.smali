.class public final Leaa;
.super Ljava/lang/Object;
.source "GameLauncherBlockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

.field private synthetic b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;Lcom/wandoujia/launcher/gift/http/model/GiftModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    iput-object p2, p0, Leaa;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {p1, v0, v1, v2}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 149
    const-string v0, "local_game_gift"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "open_game_gift_detail"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 152
    const-string v0, "CDKEY"

    iget-object v1, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ldyj;

    iget-object v1, p0, Leaa;->a:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    iget-object v2, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldyj;-><init>(Lcom/wandoujia/launcher/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-virtual {v0}, Ldyj;->execute()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leaa;->b:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
