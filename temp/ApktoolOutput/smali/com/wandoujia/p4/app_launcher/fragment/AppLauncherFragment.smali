.class public Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;
.super Landroid/support/v4/app/Fragment;
.source "AppLauncherFragment.java"


# instance fields
.field public a:Leku;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/GridView;

.field private f:Lext;

.field private g:Lexu;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Lfad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Lezs;

    invoke-direct {v0, p0}, Lezs;-><init>(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->h:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Leku;

    invoke-direct {v0}, Leku;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a:Leku;

    .line 196
    new-instance v0, Lezt;

    invoke-direct {v0, p0}, Lezt;-><init>(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->i:Lfad;

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 206
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_remind_upgrade_item"

    const-class v2, Lfag;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfag;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013e

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lfag;->a:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    const v2, 0x7f0c022d

    invoke-static {v1, v2, v0}, Ld;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 211
    invoke-static {}, Ld;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    invoke-static {v0, v5}, Lehx;->a(Landroid/view/View;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    return-void
.end method

.method private a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0c0232

    const v9, 0x7f0c0231

    const/4 v8, 0x4

    .line 149
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    invoke-static {p1}, Lezy;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f030087

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const v1, 0x7f0c0233

    const v2, 0x7f0e0136

    invoke-static {v0, v1, v2}, Ld;->a(Landroid/view/View;II)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    new-instance v0, Lexu;

    invoke-direct {v0}, Lexu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->g:Lexu;

    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f030082

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 160
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->e:Landroid/widget/GridView;

    .line 161
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->g:Lexu;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v4, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->g:Lexu;

    iget-object v1, p1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    new-instance v7, Lfai;

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v7, v0, v1}, Lfai;-><init>(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Lexu;->a(Ljava/util/List;)V

    .line 164
    const v0, 0x7f0e013c

    invoke-static {v3, v9, v0}, Ld;->a(Landroid/view/View;II)V

    .line 167
    :cond_3
    iget-object v0, p1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lext;

    invoke-direct {v0}, Lext;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->f:Lext;

    .line 169
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f030081

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 170
    const v0, 0x7f0a00ba

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->d:Landroid/widget/GridView;

    .line 172
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->d:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->f:Lext;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->f:Lext;

    iget-object v2, p1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lext;->b(Ljava/util/List;)V

    .line 175
    const v0, 0x7f0e013b

    invoke-static {v1, v9, v0}, Ld;->a(Landroid/view/View;II)V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x7

    const/4 v0, 0x0

    .line 60
    const v1, 0x7f030080

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    invoke-static {v1}, Lfam;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->h:Landroid/view/View$OnClickListener;

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    if-eqz v1, :cond_1

    :goto_0
    if-ge v0, v5, :cond_1

    aget v4, v3, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->i:Lfad;

    invoke-virtual {v0, v1}, Lezz;->a(Lfad;)V

    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    invoke-virtual {v0}, Lezz;->b()V

    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    :goto_1
    invoke-static {}, Lfak;->b()V

    invoke-direct {p0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a()V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b:Landroid/view/View;

    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_1

    :array_0
    .array-data 0x4
        0x27t 0x2t 0xct 0x7ft
        0x28t 0x2t 0xct 0x7ft
        0x29t 0x2t 0xct 0x7ft
        0x2ct 0x2t 0xct 0x7ft
        0x2dt 0x2t 0xct 0x7ft
        0x30t 0x2t 0xct 0x7ft
        0x2ft 0x2t 0xct 0x7ft
    .end array-data
.end method
