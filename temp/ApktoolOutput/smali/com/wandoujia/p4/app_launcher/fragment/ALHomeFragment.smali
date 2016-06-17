.class public Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;
.super Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;
.source "ALHomeFragment.java"


# instance fields
.field private d:Leze;

.field private e:Lezb;

.field private f:Legd;

.field private g:Lego;

.field private h:Lfad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;-><init>()V

    .line 40
    new-instance v0, Lezn;

    invoke-direct {v0, p0}, Lezn;-><init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->g:Lego;

    .line 129
    new-instance v0, Lezr;

    invoke-direct {v0, p0}, Lezr;-><init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->h:Lfad;

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    return-void
.end method

.method private a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V
    .locals 7
    .parameter

    .prologue
    .line 76
    iget-object v1, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    .line 77
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->g:Lego;

    invoke-virtual {v1, v0}, Legi;->a(Lego;)V

    .line 79
    new-instance v2, Legb;

    invoke-direct {v2}, Legb;-><init>()V

    .line 81
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_clean_widget"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->d:Leze;

    invoke-virtual {v2, v0}, Legb;->a(Legg;)Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->e:Lezb;

    invoke-virtual {v2, v0}, Legb;->a(Legg;)Z

    .line 85
    invoke-static {p1}, Lezy;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    .line 87
    new-instance v4, Leyt;

    new-instance v5, Lfah;

    invoke-virtual {v2}, Legb;->a()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lfah;-><init>(Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;I)V

    invoke-direct {v4, v5}, Leyt;-><init>(Lfah;)V

    invoke-virtual {v2, v4}, Legb;->a(Legg;)Z

    .line 88
    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lezy;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;Ljava/lang/String;)Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    new-instance v4, Leyx;

    new-instance v5, Lfai;

    invoke-virtual {v2}, Legb;->a()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lfai;-><init>(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;I)V

    invoke-direct {v4, v5}, Leyx;-><init>(Lfai;)V

    invoke-virtual {v2, v4}, Legb;->a(Legg;)Z

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->f:Legd;

    invoke-virtual {v2, v0}, Legb;->a(Legg;)Z

    .line 95
    invoke-virtual {v1, v2}, Legi;->a(Legb;)V

    .line 96
    invoke-virtual {v2}, Legb;->b()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Legi;->a(I)V

    .line 99
    invoke-virtual {v2}, Legb;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const-string v1, "app_launcher"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "check_app_count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 64
    invoke-super {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a()V

    .line 65
    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->h:Lfad;

    invoke-virtual {v0, v1}, Lezz;->a(Lfad;)V

    .line 66
    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    invoke-virtual {v0}, Lezz;->b()V

    .line 67
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v0

    .line 68
    new-instance v1, Leze;

    invoke-direct {v1}, Leze;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->d:Leze;

    .line 69
    new-instance v1, Lezb;

    invoke-direct {v1}, Lezb;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->e:Lezb;

    .line 70
    new-instance v1, Legd;

    invoke-direct {v1}, Legd;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->f:Legd;

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->f:Legd;

    const v2, 0x7f020311

    iget-object v3, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lezp;

    invoke-direct {v4}, Lezp;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Legd;->a(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->f:Legd;

    const v2, 0x7f02024a

    iget-object v3, p0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lezq;

    invoke-direct {v4}, Lezq;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Legd;->b(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->onStart()V

    .line 54
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lezo;

    invoke-direct {v1, p0}, Lezo;-><init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
