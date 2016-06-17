.class public Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;
.super Ljava/lang/Object;
.source "PlayExpMediaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INTENT_EXTRA_PAGE_URL:Ljava/lang/String; = "pageUrl"

.field public static final INTENT_EXTRA_PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field public static final INTENT_EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final serialVersionUID:J = 0x2038433b06230f29L


# instance fields
.field public medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            ">;"
        }
    .end annotation
.end field

.field public pageUrl:Ljava/lang/String;

.field public providerName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->title:Ljava/lang/String;

    .line 39
    const-string v0, "pageUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->pageUrl:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->pageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t get pageUrl from intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-string v0, "providerName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->providerName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->pageUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->getMediasFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->medias:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->medias:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t get media from intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMediasFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
