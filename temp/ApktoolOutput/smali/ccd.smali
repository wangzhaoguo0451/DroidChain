.class public final Lccd;
.super Ljava/lang/Object;


# static fields
.field public static A:I

.field public static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:I

.field private static K:Z

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x4

    const/16 v3, 0x19

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x30

    sput v0, Lccd;->C:I

    sput v1, Lccd;->a:I

    sput v4, Lccd;->b:I

    const/16 v0, 0xc

    sput v0, Lccd;->c:I

    sput v1, Lccd;->d:I

    sput v1, Lccd;->e:I

    sput v4, Lccd;->f:I

    sput v1, Lccd;->D:I

    const/4 v0, 0x2

    sput v0, Lccd;->g:I

    const/16 v0, 0x10

    sput v0, Lccd;->h:I

    const/16 v0, 0x34

    sput v0, Lccd;->i:I

    sput v5, Lccd;->E:I

    const/16 v0, 0x36

    sput v0, Lccd;->j:I

    const/16 v0, 0x2d

    sput v0, Lccd;->k:I

    const/16 v0, 0x23

    sput v0, Lccd;->l:I

    const/16 v0, 0x28

    sput v0, Lccd;->F:I

    const/16 v0, 0x36

    sput v0, Lccd;->m:I

    const/16 v0, 0xa

    sput v0, Lccd;->G:I

    sput v2, Lccd;->n:I

    const/16 v0, 0x1c

    sput v0, Lccd;->H:I

    const/16 v0, 0x1e

    sput v0, Lccd;->o:I

    const/16 v0, 0x16

    sput v0, Lccd;->p:I

    const/16 v0, 0x28

    sput v0, Lccd;->q:I

    sget v0, Lccd;->j:I

    sput v0, Lccd;->r:I

    const/16 v0, 0x2e

    sput v0, Lccd;->s:I

    const/16 v0, 0x2d

    sput v0, Lccd;->t:I

    sput v5, Lccd;->I:I

    const/4 v0, 0x6

    sput v0, Lccd;->u:I

    const/16 v0, 0x1a

    sput v0, Lccd;->v:I

    const/16 v0, 0x61

    sput v0, Lccd;->w:I

    sput v3, Lccd;->x:I

    sput v3, Lccd;->y:I

    sput v3, Lccd;->z:I

    const/4 v0, 0x1

    sput v0, Lccd;->A:I

    sput v2, Lccd;->B:I

    const/4 v0, 0x5

    sput v0, Lccd;->J:I

    sput-boolean v2, Lccd;->K:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lccd;->K:Z

    if-nez v0, :cond_1

    sget v0, Lccd;->C:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->C:I

    sget v0, Lccd;->a:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->a:I

    sget v0, Lccd;->b:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->b:I

    sget v0, Lccd;->c:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->c:I

    sget v0, Lccd;->d:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->d:I

    sget v0, Lccd;->e:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->e:I

    sget v0, Lccd;->f:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->f:I

    sget v0, Lccd;->D:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->D:I

    sget v0, Lccd;->g:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->g:I

    sget v0, Lccd;->h:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->h:I

    sget v0, Lccd;->i:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->i:I

    sget v0, Lccd;->E:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->E:I

    sget v0, Lccd;->j:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->j:I

    sget v0, Lccd;->k:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->k:I

    sget v0, Lccd;->l:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->l:I

    sget v0, Lccd;->F:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->F:I

    sget v0, Lccd;->m:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->m:I

    sget v0, Lccd;->G:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->G:I

    sget v0, Lccd;->H:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->H:I

    sget v0, Lccd;->o:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->o:I

    sget v0, Lccd;->p:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->p:I

    sget v0, Lccd;->s:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->s:I

    sget v0, Lccd;->q:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->q:I

    sget v0, Lccd;->t:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->t:I

    sget v0, Lccd;->I:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->I:I

    sget v0, Lccd;->u:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->u:I

    sget v0, Lccd;->r:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->r:I

    sget v0, Lccd;->v:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->v:I

    sget v0, Lccd;->w:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->w:I

    sget v0, Lccd;->x:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->x:I

    sget v0, Lccd;->y:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->y:I

    sget v0, Lccd;->z:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->z:I

    sget v0, Lccd;->A:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->A:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lccd;->B:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lccd;->n:I

    sget v0, Lccd;->B:I

    sget v1, Lccd;->n:I

    if-le v0, v1, :cond_0

    sget v0, Lccd;->B:I

    sget v1, Lccd;->n:I

    add-int/2addr v0, v1

    sput v0, Lccd;->B:I

    sget v1, Lccd;->n:I

    sub-int/2addr v0, v1

    sput v0, Lccd;->n:I

    sget v0, Lccd;->B:I

    sget v1, Lccd;->n:I

    sub-int/2addr v0, v1

    sput v0, Lccd;->B:I

    :cond_0
    sget v0, Lccd;->J:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lccd;->J:I

    const/4 v0, 0x1

    sput-boolean v0, Lccd;->K:Z

    :cond_1
    return-void
.end method
