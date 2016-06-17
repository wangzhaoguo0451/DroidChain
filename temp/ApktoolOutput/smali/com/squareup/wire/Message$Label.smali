.class public final enum Lcom/squareup/wire/Message$Label;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/Message$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/Message$Label;

.field public static final enum OPTIONAL:Lcom/squareup/wire/Message$Label;

.field public static final ORDER_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/squareup/wire/Message$Label;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PACKED:Lcom/squareup/wire/Message$Label;

.field public static final enum REPEATED:Lcom/squareup/wire/Message$Label;

.field public static final enum REQUIRED:Lcom/squareup/wire/Message$Label;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/squareup/wire/Message$Label;

    const-string v1, "REQUIRED"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    new-instance v0, Lcom/squareup/wire/Message$Label;

    const-string v1, "OPTIONAL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;

    new-instance v0, Lcom/squareup/wire/Message$Label;

    const-string v1, "REPEATED"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v5, v2}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    new-instance v0, Lcom/squareup/wire/Message$Label;

    const-string v1, "PACKED"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v6, v2}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/wire/Message$Label;

    sget-object v1, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    aput-object v1, v0, v6

    sput-object v0, Lcom/squareup/wire/Message$Label;->$VALUES:[Lcom/squareup/wire/Message$Label;

    .line 120
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    sput-object v0, Lcom/squareup/wire/Message$Label;->ORDER_BY_NAME:Ljava/util/Comparator;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/squareup/wire/Message$Label;->value:I

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/Message$Label;
    .locals 1
    .parameter

    .prologue
    .line 117
    const-class v0, Lcom/squareup/wire/Message$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Label;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/Message$Label;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/squareup/wire/Message$Label;->$VALUES:[Lcom/squareup/wire/Message$Label;

    invoke-virtual {v0}, [Lcom/squareup/wire/Message$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/Message$Label;

    return-object v0
.end method


# virtual methods
.method public final isPacked()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRepeated()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/squareup/wire/Message$Label;->value:I

    return v0
.end method
