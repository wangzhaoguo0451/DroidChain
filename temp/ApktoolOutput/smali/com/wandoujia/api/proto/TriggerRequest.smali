.class public final Lcom/wandoujia/api/proto/TriggerRequest;
.super Lcom/squareup/wire/Message;
.source "TriggerRequest.java"


# static fields
.field public static final DEFAULT_PB_VERSION:Ljava/lang/Integer;


# instance fields
.field public final context:Lcom/wandoujia/api/proto/UserContext;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public final pb_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trigger:Lcom/wandoujia/api/proto/Trigger;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TriggerRequest;->DEFAULT_PB_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/TriggerRequest$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 29
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    .line 30
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->trigger:Lcom/wandoujia/api/proto/Trigger;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/TriggerRequest$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/TriggerRequest;-><init>(Lcom/wandoujia/api/proto/TriggerRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/TriggerRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 38
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/TriggerRequest;

    .line 39
    iget-object v2, p0, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TriggerRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TriggerRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    .line 41
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TriggerRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    iget v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->hashCode:I

    .line 47
    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 49
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/UserContext;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 50
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Trigger;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/wandoujia/api/proto/TriggerRequest;->hashCode:I

    .line 53
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 48
    goto :goto_0

    :cond_3
    move v0, v1

    .line 49
    goto :goto_1
.end method
