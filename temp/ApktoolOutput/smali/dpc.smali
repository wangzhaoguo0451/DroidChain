.class public final Ldpc;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Ldpc;->e()Landroid/view/View;

    move-result-object v1

    iget v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    add-int/lit16 v0, v0, 0x12c

    int-to-long v2, v0

    const v0, 0x7f0c0023

    invoke-static {v1, v2, v3, v0, p1}, Ld;->a(Landroid/view/View;JILcom/wandoujia/ripple_framework/model/Model;)V

    .line 126
    return-void

    .line 124
    :pswitch_1
    const/16 v0, 0xc8

    :pswitch_2
    add-int/lit16 v0, v0, 0xc8

    :pswitch_3
    add-int/lit16 v0, v0, 0xc8

    :pswitch_4
    add-int/lit16 v0, v0, 0xc8

    :pswitch_5
    add-int/lit16 v0, v0, 0xc8

    :pswitch_6
    add-int/lit16 v0, v0, 0xc8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
