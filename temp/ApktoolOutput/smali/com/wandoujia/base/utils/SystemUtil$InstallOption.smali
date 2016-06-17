.class public final enum Lcom/wandoujia/base/utils/SystemUtil$InstallOption;
.super Ljava/lang/Enum;
.source "SystemUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/base/utils/SystemUtil$InstallOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

.field public static final enum AUTO:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

.field public static final enum ERROR:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

.field public static final enum EXTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

.field public static final enum INTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 673
    new-instance v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->AUTO:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    new-instance v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->EXTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    new-instance v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->INTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    new-instance v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->ERROR:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    .line 672
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    sget-object v1, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->AUTO:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->EXTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->INTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->ERROR:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->$VALUES:[Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

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
    .line 672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;
    .locals 1
    .parameter

    .prologue
    .line 672
    const-class v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/base/utils/SystemUtil$InstallOption;
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->$VALUES:[Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-virtual {v0}, [Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    return-object v0
.end method
