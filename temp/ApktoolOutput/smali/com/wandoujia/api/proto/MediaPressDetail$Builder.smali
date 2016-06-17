.class public final Lcom/wandoujia/api/proto/MediaPressDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MediaPressDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/MediaPressDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/MediaPressDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/MediaPressDetail;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->icon:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/api/proto/MediaPressDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->title:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/MediaPressDetail;->app:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->app:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app(Ljava/lang/String;)Lcom/wandoujia/api/proto/MediaPressDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->app:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->build()Lcom/wandoujia/api/proto/MediaPressDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/MediaPressDetail;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/wandoujia/api/proto/MediaPressDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/MediaPressDetail;-><init>(Lcom/wandoujia/api/proto/MediaPressDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/MediaPressDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->icon:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/MediaPressDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method
