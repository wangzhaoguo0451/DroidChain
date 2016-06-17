.class public final Lcom/wandoujia/api/proto/IconSet$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IconSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/IconSet;",
        ">;"
    }
.end annotation


# instance fields
.field public px100:Ljava/lang/String;

.field public px24:Ljava/lang/String;

.field public px256:Ljava/lang/String;

.field public px36:Ljava/lang/String;

.field public px48:Ljava/lang/String;

.field public px68:Ljava/lang/String;

.field public px78:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/IconSet;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px24:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px36:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px48:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px68:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px78:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px100:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px256:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/IconSet$Builder;->build()Lcom/wandoujia/api/proto/IconSet;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/IconSet;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/wandoujia/api/proto/IconSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/IconSet;-><init>(Lcom/wandoujia/api/proto/IconSet$Builder;Ld;)V

    return-object v0
.end method

.method public final px100(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px100:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public final px24(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px24:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public final px256(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px256:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public final px36(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px36:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public final px48(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px48:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public final px68(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px68:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final px78(Ljava/lang/String;)Lcom/wandoujia/api/proto/IconSet$Builder;
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wandoujia/api/proto/IconSet$Builder;->px78:Ljava/lang/String;

    .line 129
    return-object p0
.end method
