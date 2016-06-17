.class public final enum Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;
.super Ljava/lang/Enum;
.source "HistoryContentEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

.field public static final enum APP:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

.field public static final enum GAME:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    const-string v1, "APP"

    const-string v2, "APP"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->APP:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    new-instance v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    const-string v1, "GAME"

    const-string v2, "GAME"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->GAME:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    new-instance v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    const-string v1, "VIDEO"

    const-string v2, "VIDEO"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->VIDEO:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    sget-object v1, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->APP:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->GAME:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->VIDEO:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->$VALUES:[Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->$VALUES:[Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    return-object v0
.end method
