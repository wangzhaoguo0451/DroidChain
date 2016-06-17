.class final Lczf;
.super Lcwh;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcwh",
        "<",
        "Lcvz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcwh;-><init>()V

    return-void
.end method

.method private a(Lczy;Lcvz;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 681
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcwa;

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Lczy;->e()Lczy;

    .line 706
    :goto_0
    return-void

    .line 683
    :cond_1
    instance-of v0, p2, Lcwd;

    if-eqz v0, :cond_5

    .line 684
    instance-of v0, p2, Lcwd;

    if-eqz v0, :cond_2

    check-cast p2, Lcwd;

    .line 685
    iget-object v0, p2, Lcwd;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 686
    invoke-virtual {p2}, Lcwd;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lczy;->a(Ljava/lang/Number;)Lczy;

    goto :goto_0

    .line 684
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_3
    iget-object v0, p2, Lcwd;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 688
    invoke-virtual {p2}, Lcwd;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lczy;->a(Z)Lczy;

    goto :goto_0

    .line 690
    :cond_4
    invoke-virtual {p2}, Lcwd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lczy;->b(Ljava/lang/String;)Lczy;

    goto :goto_0

    .line 693
    :cond_5
    instance-of v0, p2, Lcvx;

    if-eqz v0, :cond_7

    .line 694
    invoke-virtual {p1}, Lczy;->a()Lczy;

    .line 695
    invoke-virtual {p2}, Lcvz;->h()Lcvx;

    move-result-object v0

    invoke-virtual {v0}, Lcvx;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvz;

    .line 696
    invoke-direct {p0, p1, v0}, Lczf;->a(Lczy;Lcvz;)V

    goto :goto_1

    .line 698
    :cond_6
    invoke-virtual {p1}, Lczy;->b()Lczy;

    goto :goto_0

    .line 700
    :cond_7
    instance-of v0, p2, Lcwb;

    if-eqz v0, :cond_a

    .line 701
    invoke-virtual {p1}, Lczy;->c()Lczy;

    .line 702
    instance-of v0, p2, Lcwb;

    if-eqz v0, :cond_8

    check-cast p2, Lcwb;

    iget-object v0, p2, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lczy;->a(Ljava/lang/String;)Lczy;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvz;

    invoke-direct {p0, p1, v0}, Lczf;->a(Lczy;Lcvz;)V

    goto :goto_2

    .line 702
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_9
    invoke-virtual {p1}, Lczy;->d()Lczy;

    goto/16 :goto_0

    .line 709
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lczw;)Lcvz;
    .locals 3
    .parameter

    .prologue
    .line 644
    sget-object v0, Lczn;->a:[I

    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :pswitch_0
    new-instance v0, Lcwd;

    invoke-virtual {p1}, Lczw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcwd;-><init>(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-object v0

    .line 648
    :pswitch_1
    invoke-virtual {p1}, Lczw;->i()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v0, Lcwd;

    new-instance v2, Lcom/wandoujia/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v1}, Lcom/wandoujia/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcwd;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 651
    :pswitch_2
    new-instance v0, Lcwd;

    invoke-virtual {p1}, Lczw;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcwd;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p1}, Lczw;->k()V

    .line 654
    sget-object v0, Lcwa;->a:Lcwa;

    goto :goto_0

    .line 656
    :pswitch_4
    new-instance v0, Lcvx;

    invoke-direct {v0}, Lcvx;-><init>()V

    .line 657
    invoke-virtual {p1}, Lczw;->a()V

    .line 658
    :goto_1
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lczf;->b(Lczw;)Lcvz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvx;->a(Lcvz;)V

    goto :goto_1

    .line 661
    :cond_0
    invoke-virtual {p1}, Lczw;->b()V

    goto :goto_0

    .line 664
    :pswitch_5
    new-instance v0, Lcwb;

    invoke-direct {v0}, Lcwb;-><init>()V

    .line 665
    invoke-virtual {p1}, Lczw;->c()V

    .line 666
    :goto_2
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p1}, Lczw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lczf;->b(Lczw;)Lcvz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcwb;->a(Ljava/lang/String;Lcvz;)V

    goto :goto_2

    .line 669
    :cond_1
    invoke-virtual {p1}, Lczw;->d()V

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lczw;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lczf;->b(Lczw;)Lcvz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lczy;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 642
    check-cast p2, Lcvz;

    invoke-direct {p0, p1, p2}, Lczf;->a(Lczy;Lcvz;)V

    return-void
.end method
