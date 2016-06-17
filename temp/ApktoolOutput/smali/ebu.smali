.class public final Lebu;
.super Ljava/lang/Object;
.source "FolderModelUtil.java"

# interfaces
.implements Leax;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Leaf;
    .locals 2
    .parameter

    .prologue
    .line 158
    new-instance v0, Leag;

    iget-object v1, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-direct {v0, p1, v1}, Leag;-><init>(Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lebu;->a:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
