.class public Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;
.super Landroid/support/v4/app/Fragment;
.source "GameLauncherBlockFragment.java"


# instance fields
.field private a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

.field private b:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

.field private c:Landroid/view/View;

.field private d:Lcom/wandoujia/image/view/AsyncImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

.field private k:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->b:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_arg_gift"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_arg_app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->b:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 61
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_home"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->POPUP:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "show_game_gift"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_start_view:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->gift_app_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->d:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->app_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->app_click_area:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->sub_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->action_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->j:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->k:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->d:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->app_icon:I

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->b:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->f:Landroid/view/View;

    new-instance v2, Ldzz;

    invoke-direct {v2, p0}, Ldzz;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->k:Lcom/wandoujia/image/view/AsyncImageView;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->gift_icon:I

    invoke-virtual {v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a:Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDKEY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->isReceived()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->gift_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getReceivedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/wandoujia/game_launcher/lib/R$style;->game_gift_remnant_count:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Leiw;

    sget v3, Lcom/wandoujia/game_launcher/lib/R$attr;->gl_state_highLight:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$string;->gift_get_button:I

    new-instance v5, Ldyj;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ldyj;-><init>(Lcom/wandoujia/launcher/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->j:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v3, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->j:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    new-instance v3, Leaa;

    invoke-direct {v3, p0, v0}, Leaa;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;Lcom/wandoujia/launcher/gift/http/model/GiftModel;)V

    invoke-virtual {v2, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->b:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lg;->h()I

    move-result v0

    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lebb;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lebl;->e:Lebj;

    iget-object v1, v1, Lebj;->a:Lebl;

    invoke-virtual {v1}, Lebl;->h()V

    invoke-static {v0}, Lg;->a(I)V

    .line 76
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->c:Landroid/view/View;

    return-object v0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/wandoujia/game_launcher/lib/R$string;->has_got_gift:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
