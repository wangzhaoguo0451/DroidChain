.class final enum Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
.super Ljava/lang/Enum;
.source "UnknownFieldMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

.field public static final enum FIXED32:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

.field public static final enum FIXED64:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

.field public static final enum VARINT:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    const-string v1, "VARINT"

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->VARINT:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    const-string v1, "FIXED32"

    invoke-direct {v0, v1, v3}, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED32:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    const-string v1, "FIXED64"

    invoke-direct {v0, v1, v4}, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED64:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    const-string v1, "LENGTH_DELIMITED"

    invoke-direct {v0, v1, v5}, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->LENGTH_DELIMITED:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    sget-object v1, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->VARINT:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED32:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED64:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->LENGTH_DELIMITED:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->$VALUES:[Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
    .locals 3
    .parameter

    .prologue
    .line 27
    const-string v0, "varint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->VARINT:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "fixed32"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED32:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "fixed64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->FIXED64:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "length-delimited"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->LENGTH_DELIMITED:Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    goto :goto_0

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->$VALUES:[Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    invoke-virtual {v0}, [Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;

    return-object v0
.end method
