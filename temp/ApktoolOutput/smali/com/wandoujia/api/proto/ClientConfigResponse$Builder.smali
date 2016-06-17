.class public final Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClientConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ClientConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public alarm_hour:Ljava/lang/Integer;

.field public alarm_subtitle:Ljava/lang/String;

.field public alarm_text:Ljava/lang/String;

.field public alarm_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ClientConfigResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_hour:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_text:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_title:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_subtitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final alarm_hour(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_hour:Ljava/lang/Integer;

    .line 89
    return-object p0
.end method

.method public final alarm_subtitle(Ljava/lang/String;)Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_subtitle:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public final alarm_text(Ljava/lang/String;)Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_text:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public final alarm_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_title:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->build()Lcom/wandoujia/api/proto/ClientConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ClientConfigResponse;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/wandoujia/api/proto/ClientConfigResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ClientConfigResponse;-><init>(Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;Ld;)V

    return-object v0
.end method
