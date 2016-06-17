.class public final Lcym;
.super Ljava/lang/Object;
.source "TypeAdapters.java"


# static fields
.field private static A:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static D:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static F:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static H:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static J:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static K:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static L:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private static M:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static N:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static O:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static P:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcwi;

.field public static final b:Lcwi;

.field public static final c:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcwi;

.field public static final e:Lcwi;

.field public static final f:Lcwi;

.field public static final g:Lcwi;

.field public static final h:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcwi;

.field public static final j:Lcwi;

.field public static final k:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcwi;

.field public static final n:Lcwi;

.field public static final o:Lcwi;

.field public static final p:Lcwi;

.field public static final q:Lcwi;

.field public static final r:Lcwi;

.field public static final s:Lcwi;

.field public static final t:Lcwi;

.field public static final u:Lcwi;

.field public static final v:Lcwi;

.field public static final w:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Lcvz;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lcwi;

.field public static final y:Lcwi;

.field private static z:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcyn;

    invoke-direct {v0}, Lcyn;-><init>()V

    sput-object v0, Lcym;->z:Lcwh;

    .line 82
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcym;->z:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->a:Lcwi;

    .line 84
    new-instance v0, Lcyy;

    invoke-direct {v0}, Lcyy;-><init>()V

    sput-object v0, Lcym;->A:Lcwh;

    .line 141
    const-class v0, Ljava/util/BitSet;

    sget-object v1, Lcym;->A:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->b:Lcwi;

    .line 143
    new-instance v0, Lczk;

    invoke-direct {v0}, Lczk;-><init>()V

    sput-object v0, Lcym;->B:Lcwh;

    .line 169
    new-instance v0, Lczo;

    invoke-direct {v0}, Lczo;-><init>()V

    sput-object v0, Lcym;->c:Lcwh;

    .line 183
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcym;->B:Lcwh;

    invoke-static {v0, v1, v2}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->d:Lcwi;

    .line 186
    new-instance v0, Lczp;

    invoke-direct {v0}, Lczp;-><init>()V

    sput-object v0, Lcym;->C:Lcwh;

    .line 206
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcym;->C:Lcwh;

    invoke-static {v0, v1, v2}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->e:Lcwi;

    .line 209
    new-instance v0, Lczq;

    invoke-direct {v0}, Lczq;-><init>()V

    sput-object v0, Lcym;->D:Lcwh;

    .line 228
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcym;->D:Lcwh;

    invoke-static {v0, v1, v2}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->f:Lcwi;

    .line 231
    new-instance v0, Lczr;

    invoke-direct {v0}, Lczr;-><init>()V

    sput-object v0, Lcym;->E:Lcwh;

    .line 250
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcym;->E:Lcwh;

    invoke-static {v0, v1, v2}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->g:Lcwi;

    .line 253
    new-instance v0, Lczs;

    invoke-direct {v0}, Lczs;-><init>()V

    sput-object v0, Lcym;->h:Lcwh;

    .line 272
    new-instance v0, Lczt;

    invoke-direct {v0}, Lczt;-><init>()V

    .line 287
    new-instance v0, Lcyo;

    invoke-direct {v0}, Lcyo;-><init>()V

    .line 302
    new-instance v0, Lcyp;

    invoke-direct {v0}, Lcyp;-><init>()V

    sput-object v0, Lcym;->F:Lcwh;

    .line 322
    const-class v0, Ljava/lang/Number;

    sget-object v1, Lcym;->F:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->i:Lcwi;

    .line 324
    new-instance v0, Lcyq;

    invoke-direct {v0}, Lcyq;-><init>()V

    sput-object v0, Lcym;->G:Lcwh;

    .line 343
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcym;->G:Lcwh;

    invoke-static {v0, v1, v2}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->j:Lcwi;

    .line 346
    new-instance v0, Lcyr;

    invoke-direct {v0}, Lcyr;-><init>()V

    sput-object v0, Lcym;->H:Lcwh;

    .line 366
    new-instance v0, Lcys;

    invoke-direct {v0}, Lcys;-><init>()V

    sput-object v0, Lcym;->k:Lcwh;

    .line 384
    new-instance v0, Lcyt;

    invoke-direct {v0}, Lcyt;-><init>()V

    sput-object v0, Lcym;->l:Lcwh;

    .line 402
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcym;->H:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->m:Lcwi;

    .line 404
    new-instance v0, Lcyu;

    invoke-direct {v0}, Lcyu;-><init>()V

    sput-object v0, Lcym;->I:Lcwh;

    .line 419
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcym;->I:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->n:Lcwi;

    .line 422
    new-instance v0, Lcyv;

    invoke-direct {v0}, Lcyv;-><init>()V

    sput-object v0, Lcym;->J:Lcwh;

    .line 437
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcym;->J:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->o:Lcwi;

    .line 440
    new-instance v0, Lcyw;

    invoke-direct {v0}, Lcyw;-><init>()V

    sput-object v0, Lcym;->K:Lcwh;

    .line 456
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcym;->K:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->p:Lcwi;

    .line 458
    new-instance v0, Lcyx;

    invoke-direct {v0}, Lcyx;-><init>()V

    sput-object v0, Lcym;->L:Lcwh;

    .line 478
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcym;->L:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->q:Lcwi;

    .line 480
    new-instance v0, Lcyz;

    invoke-direct {v0}, Lcyz;-><init>()V

    sput-object v0, Lcym;->M:Lcwh;

    .line 496
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcym;->M:Lcwh;

    invoke-static {v0, v1}, Lcym;->b(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->r:Lcwi;

    .line 499
    new-instance v0, Lcza;

    invoke-direct {v0}, Lcza;-><init>()V

    sput-object v0, Lcym;->N:Lcwh;

    .line 514
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcym;->N:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->s:Lcwi;

    .line 516
    new-instance v0, Lczb;

    invoke-direct {v0}, Lczb;-><init>()V

    sput-object v0, Lcym;->t:Lcwi;

    .line 537
    new-instance v0, Lczd;

    invoke-direct {v0}, Lczd;-><init>()V

    sput-object v0, Lcym;->O:Lcwh;

    .line 602
    const-class v0, Ljava/util/Calendar;

    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcym;->O:Lcwh;

    new-instance v3, Lczl;

    invoke-direct {v3, v0, v1, v2}, Lczl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)V

    sput-object v3, Lcym;->u:Lcwi;

    .line 605
    new-instance v0, Lcze;

    invoke-direct {v0}, Lcze;-><init>()V

    sput-object v0, Lcym;->P:Lcwh;

    .line 640
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcym;->P:Lcwh;

    invoke-static {v0, v1}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->v:Lcwi;

    .line 642
    new-instance v0, Lczf;

    invoke-direct {v0}, Lczf;-><init>()V

    sput-object v0, Lcym;->w:Lcwh;

    .line 714
    const-class v0, Lcvz;

    sget-object v1, Lcym;->w:Lcwh;

    invoke-static {v0, v1}, Lcym;->b(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    sput-object v0, Lcym;->x:Lcwi;

    .line 749
    new-instance v0, Lczg;

    invoke-direct {v0}, Lczg;-><init>()V

    sput-object v0, Lcym;->y:Lcwi;

    return-void
.end method

.method public static a(Lczv;Lcwh;)Lcwi;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Lczv",
            "<TTT;>;",
            "Lcwh",
            "<TTT;>;)",
            "Lcwi;"
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Lczh;

    invoke-direct {v0, p0, p1}, Lczh;-><init>(Lczv;Lcwh;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcwh;)Lcwi;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lcwh",
            "<TTT;>;)",
            "Lcwi;"
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Lczi;

    invoke-direct {v0, p0, p1}, Lczi;-><init>(Ljava/lang/Class;Lcwh;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lcwh",
            "<-TTT;>;)",
            "Lcwi;"
        }
    .end annotation

    .prologue
    .line 792
    new-instance v0, Lczj;

    invoke-direct {v0, p0, p1, p2}, Lczj;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Class;Lcwh;)Lcwi;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lcwh",
            "<TTT;>;)",
            "Lcwi;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Lczm;

    invoke-direct {v0, p0, p1}, Lczm;-><init>(Ljava/lang/Class;Lcwh;)V

    return-object v0
.end method
