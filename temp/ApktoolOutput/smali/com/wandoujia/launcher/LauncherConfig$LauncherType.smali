.class public final enum Lcom/wandoujia/launcher/LauncherConfig$LauncherType;
.super Ljava/lang/Enum;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/LauncherConfig$LauncherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

.field public static final enum APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

.field public static final enum NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    const-string v1, "NATIVE_GL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    new-instance v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    const-string v1, "APK_GL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    sget-object v1, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->$VALUES:[Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/LauncherConfig$LauncherType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/LauncherConfig$LauncherType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->$VALUES:[Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    return-object v0
.end method
