.class final Lfab;
.super Ljava/lang/Object;
.source "ALManager.java"

# interfaces
.implements Leeq;


# instance fields
.field private synthetic a:Lezz;


# direct methods
.method constructor <init>(Lezz;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lfab;->a:Lezz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lfab;->a:Lezz;

    iget-object v0, v0, Lezz;->d:Leeq;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lfab;->a:Lezz;

    const/4 v1, 0x0

    iput-object v1, v0, Lezz;->d:Leeq;

    .line 121
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_first_download_create_icon"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 122
    invoke-static {v2}, Lfak;->a(Z)V

    .line 124
    :cond_0
    return-void
.end method
