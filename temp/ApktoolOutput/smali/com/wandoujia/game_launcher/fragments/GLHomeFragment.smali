.class public Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;
.super Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;
.source "GLHomeFragment.java"

# interfaces
.implements Lebp;


# instance fields
.field private d:Lego;

.field private e:Legb;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lctp;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldxg;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldxg;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;-><init>()V

    .line 62
    new-instance v0, Lctq;

    invoke-direct {v0, p0}, Lctq;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->d:Lego;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->k:Z

    .line 304
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->b(I)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->g:Ljava/util/List;

    return-object p1
.end method

.method private static b(I)V
    .locals 3
    .parameter

    .prologue
    .line 259
    sget-object v0, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 260
    new-instance v1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;-><init>()V

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    .line 262
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    move-result-object v1

    sput-object v1, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 263
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 264
    :cond_0
    invoke-static {p0}, Ld;->f(I)V

    .line 266
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Ld;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_gl_bottom_upgrade"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->snackbar_upgrade_label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->bottom_upgrade_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-static {}, Ldxo;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->bottom_upgrade_title_with_apk:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :goto_0
    new-instance v0, Lctr;

    invoke-direct {v0, p0}, Lctr;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->c()V

    invoke-super {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->c:Landroid/view/View;

    .line 137
    :cond_0
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

    .line 144
    :cond_1
    return-void

    .line 124
    :cond_2
    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->bottom_upgrade_title_no_apk:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->j:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xb

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    iget-object v1, v0, Legb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Legb;->b()V

    .line 149
    invoke-static {v6}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->h:Lctp;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lctp;

    invoke-direct {v0}, Lctp;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->h:Lctp;

    .line 152
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->h:Lctp;

    new-instance v1, Lehw;

    invoke-direct {v1, v4, v4}, Lehw;-><init>(II)V

    iput-object v1, v0, Legg;->e:Lehw;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->h:Lctp;

    invoke-virtual {v0, v1}, Legb;->a(Legg;)Z

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    .line 159
    new-instance v1, Lehw;

    const/4 v3, 0x2

    invoke-direct {v1, v4, v3}, Lehw;-><init>(II)V

    iput-object v1, v0, Legg;->e:Lehw;

    .line 160
    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->tip_no_game:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lege;->a:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v1, v0}, Legb;->a(Legg;)Z

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    new-instance v1, Legf;

    invoke-direct {v1}, Legf;-><init>()V

    invoke-virtual {v0, v1}, Legb;->a(Legg;)Z

    .line 176
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->j:Ljava/util/List;

    if-nez v0, :cond_5

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->j:Ljava/util/List;

    move v1, v2

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->j:Ljava/util/List;

    new-instance v4, Ldxg;

    new-instance v5, Leiv;

    invoke-direct {v5, v0}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    invoke-direct {v4, v5}, Ldxg;-><init>(Leiu;)V

    const-string v0, "game_suggestion"

    invoke-virtual {v4, v0, v1}, Ldxg;->a(Ljava/lang/String;I)Ldxg;

    move-result-object v0

    iput-boolean v2, v0, Ldxg;->a:Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    if-nez v0, :cond_4

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    move v1, v2

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 166
    iget-object v3, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    new-instance v4, Ldxg;

    new-instance v5, Lctw;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-direct {v5, v0}, Lctw;-><init>(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    invoke-direct {v4, v5}, Ldxg;-><init>(Leiu;)V

    const-string v0, "local_game"

    invoke-virtual {v4, v0, v1}, Ldxg;->a(Ljava/lang/String;I)Ldxg;

    move-result-object v0

    iput-boolean v7, v0, Ldxg;->a:Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxg;

    .line 172
    iget-object v3, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v3, v0}, Legb;->a(Legg;)Z

    goto :goto_2

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxg;

    .line 187
    iget-object v3, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v3, v0}, Legb;->a(Legg;)Z

    goto :goto_3

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->g:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 191
    new-instance v0, Legd;

    invoke-direct {v0}, Legd;-><init>()V

    .line 192
    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_search_light:I

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->title_search_game:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcts;

    invoke-direct {v4, p0}, Lcts;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Legd;->a(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 204
    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_game_light:I

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->title_find_game:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lctt;

    invoke-direct {v4, p0}, Lctt;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Legd;->b(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v1, v0}, Legb;->a(Legg;)Z

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v0}, Legb;->b()V

    .line 220
    invoke-static {v6}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->k:Z

    if-eqz v0, :cond_8

    .line 221
    invoke-static {v6}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    invoke-virtual {v0, v7}, Legi;->a(I)V

    .line 226
    :goto_4
    iput-boolean v2, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->k:Z

    .line 228
    :cond_8
    return-void

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    invoke-virtual {v0, v2}, Legi;->a(I)V

    goto :goto_4
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-super {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a()V

    .line 92
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lebl;->a(Lebp;)V

    .line 93
    new-instance v0, Legb;

    invoke-direct {v0}, Legb;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->d:Lego;

    invoke-virtual {v0, v1}, Legi;->a(Lego;)V

    iget-object v1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e:Legb;

    invoke-virtual {v0, v1}, Legi;->a(Legb;)V

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e()V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->b(I)V

    :goto_0
    new-instance v0, Lctv;

    invoke-direct {v0, p0, v2}, Lctv;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->d()V

    .line 94
    return-void

    .line 93
    :cond_0
    new-instance v0, Lctu;

    invoke-direct {v0, p0, v2}, Lctu;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 232
    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->i:Ljava/util/List;

    .line 237
    invoke-direct {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->e()V

    .line 238
    iget-object v0, p0, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->onDestroy()V

    .line 86
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onEventMainThread(Ldxr;)V
    .locals 7
    .parameter

    .prologue
    .line 245
    const-string v0, "show_bottom_label"

    iget-object v1, p1, Ldxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->d()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v0, "hide_bottom_label"

    iget-object v1, p1, Ldxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->c()V

    .line 249
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
