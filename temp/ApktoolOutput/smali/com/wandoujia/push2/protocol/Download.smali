.class public Lcom/wandoujia/push2/protocol/Download;
.super Ljava/lang/Object;
.source "Download.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_ALLOW_IN_MOBILE:I = 0x2

.field public static final FLAG_PRE_DOWNLOAD:I = 0x1


# instance fields
.field private detail:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "detail"
    .end annotation
.end field

.field private flag:I
    .annotation runtime Lcwj;
        a = "flag"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "icon"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "package_name"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowInMobile()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/wandoujia/push2/protocol/Download;->flag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/wandoujia/push2/protocol/Download;->flag:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Download;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isPreDownload()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/wandoujia/push2/protocol/Download;->flag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
