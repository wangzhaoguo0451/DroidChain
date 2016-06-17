.class public final Lcom/wandoujia/api/proto/Developer$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Developer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Developer;",
        ">;"
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Developer;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 66
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer$Builder;->email:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer$Builder;->id:Ljava/lang/Long;

    .line 69
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer$Builder;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Developer$Builder;->build()Lcom/wandoujia/api/proto/Developer;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Developer;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/wandoujia/api/proto/Developer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Developer;-><init>(Lcom/wandoujia/api/proto/Developer$Builder;Ld;)V

    return-object v0
.end method

.method public final email(Ljava/lang/String;)Lcom/wandoujia/api/proto/Developer$Builder;
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/api/proto/Developer$Builder;->email:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Developer$Builder;
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/api/proto/Developer$Builder;->id:Ljava/lang/Long;

    .line 79
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/api/proto/Developer$Builder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/api/proto/Developer$Builder;->name:Ljava/lang/String;

    .line 84
    return-object p0
.end method
