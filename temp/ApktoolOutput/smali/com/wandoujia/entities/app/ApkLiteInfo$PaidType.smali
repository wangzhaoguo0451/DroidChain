.class public final enum Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;
.super Ljava/lang/Enum;
.source "ApkLiteInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

.field public static final enum EMBEDED:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

.field public static final enum NONE:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

.field public static final enum PAID:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    const-string v1, "NONE"

    const-string v2, "NOEMNE"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->NONE:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    new-instance v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    const-string v1, "EMBEDED"

    const-string v2, "EMBEDED"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->EMBEDED:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    new-instance v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    const-string v1, "PAID"

    const-string v2, "PAID"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->PAID:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    sget-object v1, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->NONE:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->EMBEDED:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->PAID:Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->$VALUES:[Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->type:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->$VALUES:[Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo$PaidType;->type:Ljava/lang/String;

    return-object v0
.end method
