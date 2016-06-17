.class final Leai;
.super Ljava/lang/Object;
.source "CasualIconAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leah;


# direct methods
.method constructor <init>(Leah;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Leai;->a:Leah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Leai;->a:Leah;

    iget-object v0, v0, Leah;->a:Leag;

    iget-object v0, v0, Leag;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Leai;->a:Leah;

    iget-object v1, v1, Leah;->a:Leag;

    iget-object v1, v1, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->CASUAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    invoke-static {}, Legx;->f()Leen;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/content/Context;Lcom/wandoujia/entities/app/AppLiteInfo;Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;)V

    .line 66
    return-void
.end method
