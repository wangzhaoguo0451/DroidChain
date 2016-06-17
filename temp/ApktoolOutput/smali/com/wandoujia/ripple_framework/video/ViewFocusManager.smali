.class public final Lcom/wandoujia/ripple_framework/video/ViewFocusManager;
.super Ljava/lang/Object;
.source "ViewFocusManager.java"


# static fields
.field private static final e:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldd;",
            "Lhlv;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ldd;

.field public c:Landroid/graphics/Rect;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const/high16 v1, 0x4220

    invoke-static {v0, v1}, Ld;->b(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->d:Z

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->c:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->e:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 195
    new-instance v2, Lhlv;

    sget-object v3, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->INVISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    invoke-direct {v2, v3}, Lhlv;-><init>(Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a(Ldd;Lhlv;Z)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public final a(Ldd;Lhlv;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lhlv;->a:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    sget-object v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->CLICK:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    if-ne v0, v1, :cond_1

    .line 277
    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->CLICK:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhlv;

    invoke-virtual {p2, v1}, Lhlv;->a(Lhlv;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_3
    return-void
.end method

.method public final a(Ldd;Lhlv;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 218
    sget-object v0, Lhlu;->a:[I

    iget-object v1, p2, Lhlv;->a:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    if-eq v0, p1, :cond_0

    .line 223
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a(Ldd;Lhlv;)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    if-eq v0, p1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlv;

    invoke-virtual {p2, v0}, Lhlv;->a(Lhlv;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    .line 234
    if-eqz p3, :cond_2

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a(Ldd;Lhlv;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    if-ne v0, p1, :cond_4

    .line 244
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhlv;

    invoke-virtual {v1, p2}, Lhlv;->a(Lhlv;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    move-object v1, v0

    .line 245
    :goto_1
    if-eqz v1, :cond_4

    .line 246
    iput-object v1, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    .line 247
    if-eqz p3, :cond_4

    .line 248
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlv;

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a(Ldd;Lhlv;)V

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    .line 244
    goto :goto_1

    .line 255
    :pswitch_3
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    if-ne v0, p1, :cond_6

    .line 256
    iput-object v2, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->b:Ldd;

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
