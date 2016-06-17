.class public Lcom/wandoujia/entities/video/PlayInfo;
.super Ljava/lang/Object;
.source "PlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1d326a5f43d108b9L


# instance fields
.field private action:Ljava/lang/String;

.field private appVersionCode:I

.field private extra:Ljava/lang/String;

.field private openType:Ljava/lang/Integer;

.field private packageName:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promotType:I

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->appVersionCode:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->openType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPromotType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->promotType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/video/PlayInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/wandoujia/entities/video/PlayInfo;->title:Ljava/lang/String;

    .line 62
    return-void
.end method
