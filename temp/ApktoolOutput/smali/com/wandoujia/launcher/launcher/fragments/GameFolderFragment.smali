.class public Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;
.super Landroid/support/v4/app/Fragment;
.source "GameFolderFragment.java"

# interfaces
.implements Lebp;


# static fields
.field private static final o:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/wandoujia/launcher/view/LauncherGridView;

.field private d:Lcom/wandoujia/launcher/view/LauncherGridView;

.field private e:Ldzw;

.field private f:Ldzy;

.field private g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->card_controller:I

    sput v0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 474
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->o:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->a(Landroid/content/Context;)Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->setPackageName(Ljava/lang/String;)V

    new-instance v1, Ledc;

    invoke-direct {v1, p0, v0, p3, p2}, Ledc;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;ILcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->setOnPopupViewClicked(Ledc;)V

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h:Landroid/widget/PopupWindow;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h:Landroid/widget/PopupWindow;

    const/16 v2, 0x33

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_xlarge:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;ILjava/util/List;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x2

    const/4 v2, 0x0

    .line 57
    invoke-static {p2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/wandoujia/game_launcher/lib/R$layout;->game_folder_expand_layout:I

    invoke-static {v0, v3}, Ledx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    iget v4, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    iget v5, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    invoke-virtual {v3, v4, v2, v5, v2}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v3, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lg;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b()V

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    sget v3, Lcom/wandoujia/game_launcher/lib/R$id;->title:I

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "folder_suggestion_title"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/wandoujia/game_launcher/lib/R$string;->wan_game_folder_recommend_game:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    sget v3, Lcom/wandoujia/game_launcher/lib/R$id;->expand_layout:I

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/view/LauncherGridView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d:Lcom/wandoujia/launcher/view/LauncherGridView;

    new-instance v0, Ldzy;

    invoke-direct {v0, v2}, Ldzy;-><init>(B)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f:Ldzy;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d:Lcom/wandoujia/launcher/view/LauncherGridView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher/view/LauncherGridView;->setNumColumns(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {v3, v0}, Lcom/wandoujia/launcher/view/LauncherGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f:Ldzy;

    invoke-virtual {v0, p2}, Ldzy;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d:Lcom/wandoujia/launcher/view/LauncherGridView;

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f:Ldzy;

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher/view/LauncherGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/LauncherGridView;->setNeedLogCardShow(Z)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;->fling(I)V

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lg;->e(Landroid/content/Context;)F

    move-result v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 229
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_bottom_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_xsmall:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 237
    iget v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    if-nez v2, :cond_0

    .line 238
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_xlarge:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 243
    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;->setMaxHeight(F)V

    .line 247
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 243
    goto :goto_0
.end method

.method private static b(I)V
    .locals 3
    .parameter

    .prologue
    .line 293
    sget-object v0, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 294
    new-instance v1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;-><init>()V

    .line 295
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    .line 296
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    move-result-object v1

    sput-object v1, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 297
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 298
    :cond_0
    invoke-static {p0}, Ld;->f(I)V

    .line 300
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Ldzw;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Lcom/wandoujia/launcher/view/LauncherGridView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->game_folder_no_game_layout:I

    invoke-static {v0, v1}, Ledx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 275
    :cond_1
    iput v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    .line 276
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b()V

    .line 277
    iget v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(I)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    invoke-virtual {v0, p1}, Ldzw;->a(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 284
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/LauncherGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    .line 287
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b()V

    .line 288
    iget v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 118
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_folder_fragment:I

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->scroll_List:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->container_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldzs;

    invoke-direct {v1, p0}, Ldzs;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->bottom_upgrade_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->bottom_upgrade_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->l:Landroid/widget/TextView;

    invoke-static {}, Ldxo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->l:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->bottom_upgrade_title_with_apk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Ldzt;

    invoke-direct {v1, p0}, Ldzt;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ld;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_gl_bottom_upgrade"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_upgrade"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "show_upgrade_bar"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/launcher/view/LauncherGridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->mario_game_launcher_text_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i:Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    invoke-virtual {v2, v1}, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher/view/LauncherGridView;->setNumColumns(I)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    iget v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    iget v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    iget v4, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    iget v5, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->n:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/wandoujia/launcher/view/LauncherGridView;->setPadding(IIII)V

    new-instance v1, Ldzw;

    invoke-direct {v1, p0, v7}, Ldzw;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;B)V

    iput-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    invoke-virtual {v1}, Lebl;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b()V

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    invoke-virtual {v2, v1}, Ldzw;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e:Ldzw;

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher/view/LauncherGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher/view/LauncherGridView;->setNeedLogCardShow(Z)V

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c:Lcom/wandoujia/launcher/view/LauncherGridView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(I)V

    :goto_2
    new-instance v1, Ldzu;

    invoke-direct {v1, p0, v0}, Ldzu;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;I)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lebl;->a(Lebp;)V

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;-><init>()V

    iget v3, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Leny;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    const-string v1, "game/game_launcher_home"

    invoke-static {v0, v1}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a:Landroid/view/View;

    return-object v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->l:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->bottom_upgrade_title_no_apk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    invoke-static {v1, v2}, Ld;->a(Landroid/view/View;Lcom/wandoujia/launcher_base/view/tips/TipsType;)Landroid/view/View;

    new-instance v1, Ldzv;

    invoke-direct {v1, p0, v7}, Ldzv;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;B)V

    new-array v2, v7, [Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 88
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onEventMainThread(Ldxr;)V
    .locals 7
    .parameter

    .prologue
    .line 92
    const-string v0, "show_bottom_label"

    iget-object v1, p1, Ldxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_gl_bottom_upgrade"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_upgrade"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "show_upgrade_bar"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "hide_bottom_label"

    iget-object v1, p1, Ldxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_upgrade"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "hide_upgrade_bar"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 354
    return-void
.end method
