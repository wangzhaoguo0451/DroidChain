.class public final enum Lcom/squareup/wire/Message$Datatype;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/Message$Datatype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/Message$Datatype;

.field public static final enum BOOL:Lcom/squareup/wire/Message$Datatype;

.field public static final enum BYTES:Lcom/squareup/wire/Message$Datatype;

.field public static final enum DOUBLE:Lcom/squareup/wire/Message$Datatype;

.field public static final enum ENUM:Lcom/squareup/wire/Message$Datatype;

.field public static final enum FIXED32:Lcom/squareup/wire/Message$Datatype;

.field public static final enum FIXED64:Lcom/squareup/wire/Message$Datatype;

.field public static final enum FLOAT:Lcom/squareup/wire/Message$Datatype;

.field public static final enum INT32:Lcom/squareup/wire/Message$Datatype;

.field public static final enum INT64:Lcom/squareup/wire/Message$Datatype;

.field public static final enum MESSAGE:Lcom/squareup/wire/Message$Datatype;

.field public static final ORDER_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/squareup/wire/Message$Datatype;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SFIXED32:Lcom/squareup/wire/Message$Datatype;

.field public static final enum SFIXED64:Lcom/squareup/wire/Message$Datatype;

.field public static final enum SINT32:Lcom/squareup/wire/Message$Datatype;

.field public static final enum SINT64:Lcom/squareup/wire/Message$Datatype;

.field public static final enum STRING:Lcom/squareup/wire/Message$Datatype;

.field private static final TYPES_BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Message$Datatype;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UINT32:Lcom/squareup/wire/Message$Datatype;

.field public static final enum UINT64:Lcom/squareup/wire/Message$Datatype;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 37
    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "INT32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "INT64"

    invoke-direct {v0, v1, v4, v5}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "UINT32"

    invoke-direct {v0, v1, v5, v6}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "UINT64"

    invoke-direct {v0, v1, v6, v7}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "SINT32"

    invoke-direct {v0, v1, v7, v8}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    .line 38
    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "SINT64"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "BOOL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "BYTES"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    .line 39
    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "FIXED32"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "SFIXED32"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "FIXED64"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    .line 40
    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "SFIXED64"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "FLOAT"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    new-instance v0, Lcom/squareup/wire/Message$Datatype;

    const-string v1, "DOUBLE"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Datatype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    .line 36
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/squareup/wire/Message$Datatype;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->$VALUES:[Lcom/squareup/wire/Message$Datatype;

    .line 42
    new-instance v0, Lcau;

    invoke-direct {v0}, Lcau;-><init>()V

    sput-object v0, Lcom/squareup/wire/Message$Datatype;->ORDER_BY_NAME:Ljava/util/Comparator;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    sput-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "int32"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "int64"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "uint32"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "uint64"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "sint32"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "sint64"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "bool"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "enum"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "string"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "bytes"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "message"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "fixed32"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "sfixed32"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "fixed64"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "sfixed64"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "float"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    const-string v1, "double"

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/squareup/wire/Message$Datatype;->value:I

    .line 75
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/squareup/wire/Message$Datatype;
    .locals 1
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->TYPES_BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Datatype;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/Message$Datatype;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/squareup/wire/Message$Datatype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Datatype;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/Message$Datatype;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->$VALUES:[Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v0}, [Lcom/squareup/wire/Message$Datatype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/Message$Datatype;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/squareup/wire/Message$Datatype;->value:I

    return v0
.end method

.method public final wireType()Lcom/squareup/wire/WireType;
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcat;->a:[I

    invoke-virtual {p0}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No wiretype for datatype "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    .line 103
    :goto_0
    return-object v0

    .line 95
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
