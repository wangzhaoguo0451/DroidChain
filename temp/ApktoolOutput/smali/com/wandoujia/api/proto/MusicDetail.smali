.class public final Lcom/wandoujia/api/proto/MusicDetail;
.super Lcom/squareup/wire/Message;
.source "MusicDetail.java"


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/MusicDetail$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/MusicDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/MusicDetail;-><init>(Lcom/wandoujia/api/proto/MusicDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    instance-of v0, p1, Lcom/wandoujia/api/proto/MusicDetail;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
