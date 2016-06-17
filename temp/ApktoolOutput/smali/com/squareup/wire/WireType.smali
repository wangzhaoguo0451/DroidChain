.class public final enum Lcom/squareup/wire/WireType;
.super Ljava/lang/Enum;
.source "WireType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/WireType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/WireType; = null

.field public static final enum END_GROUP:Lcom/squareup/wire/WireType; = null

.field public static final enum FIXED32:Lcom/squareup/wire/WireType; = null

.field public static final enum FIXED64:Lcom/squareup/wire/WireType; = null

.field public static final FIXED_32_SIZE:I = 0x4

.field public static final FIXED_64_SIZE:I = 0x8

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/wire/WireType; = null

.field public static final enum START_GROUP:Lcom/squareup/wire/WireType; = null

.field public static final TAG_TYPE_BITS:I = 0x3

.field private static final TAG_TYPE_MASK:I = 0x7

.field public static final enum VARINT:Lcom/squareup/wire/WireType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "VARINT"

    invoke-direct {v0, v1, v4, v4}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED64"

    invoke-direct {v0, v1, v5, v5}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "LENGTH_DELIMITED"

    invoke-direct {v0, v1, v6, v6}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "START_GROUP"

    invoke-direct {v0, v1, v7, v7}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "END_GROUP"

    invoke-direct {v0, v1, v8, v8}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED32"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/squareup/wire/WireType;

    sget-object v1, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/wire/WireType;->$VALUES:[Lcom/squareup/wire/WireType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/squareup/wire/WireType;->value:I

    .line 47
    return-void
.end method

.method public static valueOf(I)Lcom/squareup/wire/WireType;
    .locals 3
    .parameter

    .prologue
    .line 25
    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No WireType for value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    .line 37
    :goto_0
    return-object v0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 33
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/WireType;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/squareup/wire/WireType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/WireType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/WireType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/squareup/wire/WireType;->$VALUES:[Lcom/squareup/wire/WireType;

    invoke-virtual {v0}, [Lcom/squareup/wire/WireType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/WireType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/squareup/wire/WireType;->value:I

    return v0
.end method
