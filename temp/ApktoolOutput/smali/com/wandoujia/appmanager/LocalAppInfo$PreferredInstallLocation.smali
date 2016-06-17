.class public final enum Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;
.super Ljava/lang/Enum;
.source "LocalAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

.field public static final enum AUTO:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

.field public static final enum EXTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

.field public static final enum INTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->AUTO:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    .line 45
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->INTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    .line 46
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->EXTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->AUTO:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->INTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->EXTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->$VALUES:[Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->$VALUES:[Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    invoke-virtual {v0}, [Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    return-object v0
.end method
