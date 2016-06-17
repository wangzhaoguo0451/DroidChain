.class public final Lcom/wandoujia/api/proto/TrailerBean$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TrailerBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/TrailerBean;",
        ">;"
    }
.end annotation


# instance fields
.field public cover_url:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:Ljava/lang/Integer;

.field public is_portrait:Ljava/lang/Boolean;

.field public trailer_id:Ljava/lang/Integer;

.field public trailer_name:Ljava/lang/String;

.field public trailer_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/TrailerBean;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 99
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_id:Ljava/lang/Integer;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_name:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->description:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->duration:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->is_portrait:Ljava/lang/Boolean;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->cover_url:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/TrailerBean$Builder;->build()Lcom/wandoujia/api/proto/TrailerBean;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/TrailerBean;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/wandoujia/api/proto/TrailerBean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/TrailerBean;-><init>(Lcom/wandoujia/api/proto/TrailerBean$Builder;Ld;)V

    return-object v0
.end method

.method public final cover_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->cover_url:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->description:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public final duration(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->duration:Ljava/lang/Integer;

    .line 126
    return-object p0
.end method

.method public final is_portrait(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->is_portrait:Ljava/lang/Boolean;

    .line 131
    return-object p0
.end method

.method public final trailer_id(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_id:Ljava/lang/Integer;

    .line 111
    return-object p0
.end method

.method public final trailer_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_name:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public final trailer_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/TrailerBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_url:Ljava/lang/String;

    .line 141
    return-object p0
.end method
