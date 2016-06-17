.class final enum Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;
.super Ljava/lang/Enum;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

.field public static final enum APP:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

.field public static final enum GAME:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    const-string v1, "APP"

    const-string v2, "wdj://apps/explore"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->APP:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    .line 69
    new-instance v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    const-string v1, "GAME"

    const-string v2, "wdj://games/explore"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->GAME:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    sget-object v1, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->APP:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->GAME:Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->$VALUES:[Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->uri:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->$VALUES:[Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/navigation/NavigationManager$Vertical;

    return-object v0
.end method
