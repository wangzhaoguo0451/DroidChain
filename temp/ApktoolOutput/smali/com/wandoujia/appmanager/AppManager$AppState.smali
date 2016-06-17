.class public final enum Lcom/wandoujia/appmanager/AppManager$AppState;
.super Ljava/lang/Enum;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/appmanager/AppManager$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum INSTALLED:Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum NOT_EXIST:Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum PATCHING:Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum UNINSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

.field public static final enum WAITING_INSTALL:Lcom/wandoujia/appmanager/AppManager$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "WAITING_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->WAITING_INSTALL:Lcom/wandoujia/appmanager/AppManager$AppState;

    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLED:Lcom/wandoujia/appmanager/AppManager$AppState;

    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "NOT_EXIST"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->NOT_EXIST:Lcom/wandoujia/appmanager/AppManager$AppState;

    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "UNINSTALLING"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->UNINSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    new-instance v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    const-string v1, "PATCHING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/AppManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->PATCHING:Lcom/wandoujia/appmanager/AppManager$AppState;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/appmanager/AppManager$AppState;

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->WAITING_INSTALL:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLED:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->NOT_EXIST:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->UNINSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/appmanager/AppManager$AppState;->PATCHING:Lcom/wandoujia/appmanager/AppManager$AppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->$VALUES:[Lcom/wandoujia/appmanager/AppManager$AppState;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;
    .locals 1
    .parameter

    .prologue
    .line 102
    const-class v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/appmanager/AppManager$AppState;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->$VALUES:[Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-virtual {v0}, [Lcom/wandoujia/appmanager/AppManager$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/appmanager/AppManager$AppState;

    return-object v0
.end method
