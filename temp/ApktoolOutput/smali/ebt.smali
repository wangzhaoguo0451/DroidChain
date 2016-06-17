.class public final Lebt;
.super Ljava/lang/Object;
.source "FolderModelUtil.java"

# interfaces
.implements Leax;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Leaf;
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Leak;

    iget-object v1, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-direct {v0, p1, v1}, Leak;-><init>(Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getIcons()Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getIcons()Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;->getPx256()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lebt;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
