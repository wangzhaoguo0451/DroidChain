.class public final Lcom/wandoujia/api/proto/Action$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Action;",
        ">;"
    }
.end annotation


# instance fields
.field public intent:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/Integer;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Action;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 89
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action$Builder;->type:Ljava/lang/Integer;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action$Builder;->intent:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action$Builder;->url:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action$Builder;->text:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action$Builder;->package_name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Action;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/wandoujia/api/proto/Action;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Action;-><init>(Lcom/wandoujia/api/proto/Action$Builder;Ld;)V

    return-object v0
.end method

.method public final intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wandoujia/api/proto/Action$Builder;->intent:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/api/proto/Action$Builder;->package_name:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/api/proto/Action$Builder;->text:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public final type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Action$Builder;
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wandoujia/api/proto/Action$Builder;->type:Ljava/lang/Integer;

    .line 99
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/api/proto/Action$Builder;->url:Ljava/lang/String;

    .line 109
    return-object p0
.end method
