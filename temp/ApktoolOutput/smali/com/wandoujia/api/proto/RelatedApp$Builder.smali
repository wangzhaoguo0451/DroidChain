.class public final Lcom/wandoujia/api/proto/RelatedApp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RelatedApp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/RelatedApp;",
        ">;"
    }
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/RelatedApp;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 57
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/RelatedApp;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/RelatedApp$Builder;->packageName:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/api/proto/RelatedApp;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/RelatedApp$Builder;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/RelatedApp$Builder;->build()Lcom/wandoujia/api/proto/RelatedApp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/RelatedApp;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/wandoujia/api/proto/RelatedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/RelatedApp;-><init>(Lcom/wandoujia/api/proto/RelatedApp$Builder;Ld;)V

    return-object v0
.end method

.method public final packageName(Ljava/lang/String;)Lcom/wandoujia/api/proto/RelatedApp$Builder;
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wandoujia/api/proto/RelatedApp$Builder;->packageName:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/RelatedApp$Builder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wandoujia/api/proto/RelatedApp$Builder;->title:Ljava/lang/String;

    .line 69
    return-object p0
.end method
