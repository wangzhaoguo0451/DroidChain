.class public final enum Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;
.super Ljava/lang/Enum;
.source "OnboardFragmentCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

.field public static final enum ESSENTIAL_APPS:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

.field public static final enum ESSENTIAL_GAMES:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

.field public static final enum SPLASH:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;


# instance fields
.field private fragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    const-string v1, "SPLASH"

    const-string v3, "wdj://welcome/hello"

    const-class v4, Lcom/wandoujia/jupiter/onboard/SplashFragment;

    const-string v5, "http://apis.wandoujia.com/five/v1/nux/essentials/apps?max=50"

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->SPLASH:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    .line 19
    new-instance v3, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    const-string v4, "ESSENTIAL_APPS"

    const-string v6, "wdj://welcome/apps"

    const-class v7, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/nux/essentials/apps?max=50"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->ESSENTIAL_APPS:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    .line 21
    new-instance v3, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    const-string v4, "ESSENTIAL_GAMES"

    const-string v6, "wdj://welcome/games"

    const-class v7, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/nux/essentials/games?max=50"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->ESSENTIAL_GAMES:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    sget-object v1, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->SPLASH:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->ESSENTIAL_APPS:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    aput-object v1, v0, v9

    sget-object v1, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->ESSENTIAL_GAMES:Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    aput-object v1, v0, v10

    sput-object v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->$VALUES:[Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->name:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->fragment:Ljava/lang/Class;

    .line 27
    iput-object p5, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->url:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->fragment:Ljava/lang/Class;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->$VALUES:[Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    return-object v0
.end method
