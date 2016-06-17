.class public final Lcom/wandoujia/api/proto/IOSAppDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IOSAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/IOSAppDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public ios_schema:Ljava/lang/String;

.field public itunes_download_url:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/IOSAppDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 73
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->ios_schema:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->itunes_download_url:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->icon:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->build()Lcom/wandoujia/api/proto/IOSAppDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/IOSAppDetail;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/wandoujia/api/proto/IOSAppDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/IOSAppDetail;-><init>(Lcom/wandoujia/api/proto/IOSAppDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/IOSAppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->icon:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final ios_schema(Ljava/lang/String;)Lcom/wandoujia/api/proto/IOSAppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->ios_schema:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public final itunes_download_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/IOSAppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->itunes_download_url:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/IOSAppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->title:Ljava/lang/String;

    .line 97
    return-object p0
.end method
