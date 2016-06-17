.class public final enum Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;
.super Ljava/lang/Enum;
.source "UpgradeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

.field public static final enum IMPORTANT:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

.field public static final enum RECENTLY:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

.field public static final enum RUNNING:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

.field public static final enum TOP:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    const-string v1, "IMPORTANT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->IMPORTANT:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    new-instance v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->RUNNING:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    new-instance v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->TOP:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    new-instance v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    const-string v1, "RECENTLY"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->RECENTLY:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    sget-object v1, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->IMPORTANT:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->RUNNING:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->TOP:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->RECENTLY:Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/util/UpgradeUtils$AppType;

    return-object v0
.end method
