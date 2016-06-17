.class public final enum Lcom/wandoujia/api/proto/ExtensionPack$PacketType;
.super Ljava/lang/Enum;
.source "ExtensionPack.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/ExtensionPack$PacketType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

.field public static final enum DPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

.field public static final enum GPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

.field public static final enum WPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    const-string v1, "WPK"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->WPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 281
    new-instance v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    const-string v1, "DPK"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->DPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 285
    new-instance v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    const-string v1, "GPK"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->GPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 272
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    sget-object v1, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->WPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->DPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->GPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->$VALUES:[Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

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
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput p3, p0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->value:I

    .line 291
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$PacketType;
    .locals 1
    .parameter

    .prologue
    .line 272
    const-class v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/ExtensionPack$PacketType;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->$VALUES:[Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->value:I

    return v0
.end method
