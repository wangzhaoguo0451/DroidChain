.class public final Lcom/wandoujia/api/proto/OnboardResponse;
.super Lcom/squareup/wire/Message;
.source "OnboardResponse.java"


# static fields
.field public static final DEFAULT_ONBOARD_STATUS:Ljava/lang/Boolean;


# instance fields
.field public final onboard_status:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/OnboardResponse;->DEFAULT_ONBOARD_STATUS:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/OnboardResponse$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 23
    iget-object v0, p1, Lcom/wandoujia/api/proto/OnboardResponse$Builder;->onboard_status:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/OnboardResponse$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/OnboardResponse;-><init>(Lcom/wandoujia/api/proto/OnboardResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 28
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/api/proto/OnboardResponse;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    check-cast p1, Lcom/wandoujia/api/proto/OnboardResponse;

    iget-object v1, p1, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/api/proto/OnboardResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->hashCode:I

    .line 36
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/api/proto/OnboardResponse;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
