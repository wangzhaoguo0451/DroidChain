.class public final Lcom/wandoujia/api/proto/BadgeEnum;
.super Lcom/squareup/wire/Message;
.source "BadgeEnum.java"


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/BadgeEnum$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/BadgeEnum$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/BadgeEnum;-><init>(Lcom/wandoujia/api/proto/BadgeEnum$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    instance-of v0, p1, Lcom/wandoujia/api/proto/BadgeEnum;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
