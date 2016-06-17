.class public final Lefe;
.super Ljava/lang/Object;
.source "StartDownloadAppAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Leiu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Leiu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lefe;->c:Leiu;

    .line 51
    iput-object p1, p0, Lefe;->b:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public static synthetic a(Lefe;)Leiu;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lefe;->c:Leiu;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lefj;

    invoke-direct {v0, p0}, Lefj;-><init>(Lefe;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 153
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    iget-object v1, p0, Lefe;->b:Landroid/app/Activity;

    iget-object v2, p0, Lefe;->c:Leiu;

    invoke-interface {v2}, Leiu;->o()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lejf;

    invoke-direct {v3, p0}, Lejf;-><init>(Lefe;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lejf;)V

    .line 149
    iget-object v0, v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->b:Lejq;

    invoke-virtual {v0}, Lejq;->show()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lefe;->b()V

    goto :goto_0
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/wandoujia/entities/app/ApkObbInfo;Lehp;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    sget-object v2, Lefe;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    new-instance v2, Lejw;

    invoke-direct {v2, p0}, Lejw;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/wandoujia/launcher_base/R$string;->gpk_dpk_unzip_warning_title:I

    invoke-virtual {v2, v3}, Lejw;->a(I)Lejw;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$string;->gpk_dpk_unzip_warning_message:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lejw;->b(Ljava/lang/CharSequence;)Lejw;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    new-instance v2, Lefl;

    invoke-direct {v2}, Lefl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lejw;->b(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->gpk_dpk_unzip_warning_confirm:I

    new-instance v2, Lefk;

    invoke-direct {v2, p1, p2, p3, p4}, Lefk;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/wandoujia/entities/app/ApkObbInfo;Lehp;)V

    invoke-virtual {v0, v1, v2}, Lejw;->a(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    move-result-object v0

    invoke-virtual {v0}, Lejw;->a()Lejq;

    move-result-object v0

    invoke-virtual {v0}, Lejq;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/wandoujia/entities/app/ApkObbInfo;->getCpuType()I

    move-result v0

    invoke-static {p1, p2, v0, p4}, Lehi;->a(Ljava/lang/String;Ljava/util/List;ILehp;)V

    goto :goto_0
.end method

.method public static synthetic a(Lefe;Lcom/wandoujia/launcher_base/download/DownloadRequest;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Leeo;

    sget-object v1, Lcom/wandoujia/launcher_base/download/GroupType;->GAME_DATA_PACKET:Lcom/wandoujia/launcher_base/download/GroupType;

    invoke-direct {v0}, Leeo;-><init>()V

    invoke-virtual {v0, p1}, Leeo;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->data_package_prefx:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lefe;->c:Leiu;

    invoke-interface {v4}, Leiu;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lefe;->c:Leiu;

    invoke-static {v2, v1}, Leeu;->a(Leiu;Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Leeo;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    invoke-static {}, Legx;->f()Leen;

    move-result-object v1

    invoke-interface {v1, v0}, Leen;->a(Leeo;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lefg;

    invoke-direct {v0, p0}, Lefg;-><init>(Lefe;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method static synthetic b(Lefe;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lefe;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lefe;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lejo;

    iget-object v1, p0, Lefe;->b:Landroid/app/Activity;

    new-instance v2, Lejp;

    iget-object v3, p0, Lefe;->c:Leiu;

    invoke-interface {v3}, Leiu;->d()Ljava/lang/String;

    iget-object v3, p0, Lefe;->c:Leiu;

    invoke-interface {v3}, Leiu;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lefe;->c:Leiu;

    invoke-interface {v4}, Leiu;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lefe;->c:Leiu;

    invoke-interface {v5}, Leiu;->i()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lejp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lejo;-><init>(Landroid/content/Context;Lejp;)V

    iget-object v1, p0, Lefe;->b:Landroid/app/Activity;

    sget v2, Lcom/wandoujia/launcher_base/R$string;->install_still:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lefh;

    invoke-direct {v2, p0}, Lefh;-><init>(Lefe;)V

    iget-object v3, v0, Lejo;->b:Lejw;

    invoke-virtual {v3, v1, v2}, Lejw;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;

    iget-object v1, p0, Lefe;->b:Landroid/app/Activity;

    sget v2, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lefi;

    invoke-direct {v2}, Lefi;-><init>()V

    iget-object v3, v0, Lejo;->b:Lejw;

    invoke-virtual {v3, v1, v2}, Lejw;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;

    iget-object v1, v0, Lejo;->a:Lejp;

    iget-object v1, v1, Lejp;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lejo;->b:Lejw;

    iget-object v2, v0, Lejo;->a:Lejp;

    iget-object v2, v2, Lejp;->b:Ljava/lang/String;

    iget-object v1, v1, Lejw;->a:Lejv;

    iput-object v2, v1, Lejv;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, v0, Lejo;->b:Lejw;

    invoke-virtual {v0}, Lejw;->b()Lejq;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lefe;->a()V

    goto :goto_0
.end method

.method static synthetic c(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lefe;->a()V

    return-void
.end method

.method public static synthetic d(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lefe;->b()V

    return-void
.end method

.method static synthetic e(Lefe;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v1, Lehp;

    invoke-direct {v1, p0}, Lehp;-><init>(Lefe;)V

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkObbInfo;->getMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->p()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lefe;->c:Leiu;

    invoke-interface {v0}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkObbInfo;->getCpuType()I

    move-result v0

    invoke-static {v2, v3, v0, v1}, Lehi;->a(Ljava/lang/String;Ljava/util/List;ILehp;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Leji;

    iget-object v0, p0, Lefe;->b:Landroid/app/Activity;

    iget-object v3, p0, Lefe;->c:Leiu;

    invoke-interface {v3}, Leiu;->p()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lejl;

    invoke-direct {v4, p0, v1}, Lejl;-><init>(Lefe;Lehp;)V

    invoke-direct {v2, v0, v3, v4}, Leji;-><init>(Landroid/content/Context;Ljava/util/List;Lejl;)V

    iget-object v0, v2, Leji;->a:Landroid/content/Context;

    sget v1, Lcom/wandoujia/launcher_base/R$layout;->aa_gpk_dpk_pack_list:I

    invoke-static {v0, v1}, Lehx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/wandoujia/launcher_base/R$id;->extension_listview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v3, v2, Leji;->d:Lejm;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lejw;

    iget-object v3, v2, Leji;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lejw;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Leji;->a:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->download_gpk_dpk_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lejw;->a(Ljava/lang/CharSequence;)Lejw;

    invoke-virtual {v0, v1}, Lejw;->a(Landroid/view/View;)Lejw;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->confirm:I

    new-instance v3, Lejj;

    invoke-direct {v3, v2}, Lejj;-><init>(Leji;)V

    invoke-virtual {v0, v1, v3}, Lejw;->a(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    new-instance v3, Lejk;

    invoke-direct {v3}, Lejk;-><init>()V

    invoke-virtual {v0, v1, v3}, Lejw;->b(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    invoke-virtual {v0}, Lejw;->a()Lejq;

    move-result-object v0

    iput-object v0, v2, Leji;->b:Lejq;

    iget-object v0, v2, Leji;->b:Lejq;

    invoke-virtual {v0}, Lejq;->show()V

    goto :goto_0
.end method

.method public static synthetic f(Lefe;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lefe;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Leff;

    invoke-direct {v0, p0}, Leff;-><init>(Lefe;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method
