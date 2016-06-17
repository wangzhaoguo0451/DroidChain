.class public final Lcom/wandoujia/api/proto/PrimitiveResponse;
.super Lcom/squareup/wire/Message;
.source "PrimitiveResponse.java"


# static fields
.field public static final DEFAULT_BOOLEAN_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BYTE_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DOUBLE_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LONG_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STRING_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;


# instance fields
.field public final boolean_array:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final byte_array:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public final double_array:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final long_array:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final string_array:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_DOUBLE_ARRAY:Ljava/util/List;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_LONG_ARRAY:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_BOOLEAN_ARRAY:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_STRING_ARRAY:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_BYTE_ARRAY:Ljava/util/List;

    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PrimitiveResponse;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->double_array:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->long_array:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->boolean_array:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->string_array:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->byte_array:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/PrimitiveResponse;-><init>(Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/PrimitiveResponse;

    .line 63
    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PrimitiveResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 73
    iget v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->hashCode:I

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 76
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse;->hashCode:I

    .line 83
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 75
    goto :goto_0

    :cond_3
    move v0, v1

    .line 76
    goto :goto_1

    :cond_4
    move v0, v1

    .line 77
    goto :goto_2

    :cond_5
    move v0, v1

    .line 78
    goto :goto_3

    .line 80
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method
