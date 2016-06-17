// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

// Referenced classes of package com.google.zxing.oned.rss.expanded.decoders:
//            CurrentParsingState, DecodedChar, DecodedNumeric, BlockParsedResult, 
//            DecodedInformation, FieldParser

final class GeneralAppIdDecoder
{

    GeneralAppIdDecoder(BitArray bitarray)
    {
        information = bitarray;
    }

    private DecodedChar decodeAlphanumeric(int i)
    {
        int j = extractNumericValueFromBitArray(i, 5);
        if(j != 15) goto _L2; else goto _L1
_L1:
        DecodedChar decodedchar = new DecodedChar(i + 5, '$');
_L4:
        return decodedchar;
_L2:
        int k;
        if(j >= 5 && j < 15)
        {
            decodedchar = new DecodedChar(i + 5, (char)(-5 + (j + 48)));
            continue; /* Loop/switch isn't completed */
        }
        k = extractNumericValueFromBitArray(i, 6);
        if(k < 32 || k >= 58)
            break; /* Loop/switch isn't completed */
        decodedchar = new DecodedChar(i + 6, (char)(k + 33));
        if(true) goto _L4; else goto _L3
_L3:
        switch(k)
        {
        default:
            throw new RuntimeException("Decoding invalid alphanumeric value: " + k);

        case 58: // ':'
            decodedchar = new DecodedChar(i + 6, '*');
            break;

        case 59: // ';'
            decodedchar = new DecodedChar(i + 6, ',');
            break;

        case 60: // '<'
            decodedchar = new DecodedChar(i + 6, '-');
            break;

        case 61: // '='
            decodedchar = new DecodedChar(i + 6, '.');
            break;

        case 62: // '>'
            decodedchar = new DecodedChar(i + 6, '/');
            break;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    private DecodedChar decodeIsoIec646(int i)
    {
        int j = extractNumericValueFromBitArray(i, 5);
        if(j != 15) goto _L2; else goto _L1
_L1:
        DecodedChar decodedchar = new DecodedChar(i + 5, '$');
_L4:
        return decodedchar;
_L2:
        if(j >= 5 && j < 15)
        {
            decodedchar = new DecodedChar(i + 5, (char)(-5 + (j + 48)));
            continue; /* Loop/switch isn't completed */
        }
        int k = extractNumericValueFromBitArray(i, 7);
        if(k >= 64 && k < 90)
        {
            decodedchar = new DecodedChar(i + 7, (char)(k + 1));
            continue; /* Loop/switch isn't completed */
        }
        if(k < 90 || k >= 116)
            break; /* Loop/switch isn't completed */
        decodedchar = new DecodedChar(i + 7, (char)(k + 7));
        if(true) goto _L4; else goto _L3
_L3:
        int l = extractNumericValueFromBitArray(i, 8);
        switch(l)
        {
        default:
            throw new RuntimeException("Decoding invalid ISO/IEC 646 value: " + l);

        case 232: 
            decodedchar = new DecodedChar(i + 8, '!');
            break;

        case 233: 
            decodedchar = new DecodedChar(i + 8, '"');
            break;

        case 234: 
            decodedchar = new DecodedChar(i + 8, '%');
            break;

        case 235: 
            decodedchar = new DecodedChar(i + 8, '&');
            break;

        case 236: 
            decodedchar = new DecodedChar(i + 8, '\'');
            break;

        case 237: 
            decodedchar = new DecodedChar(i + 8, '(');
            break;

        case 238: 
            decodedchar = new DecodedChar(i + 8, ')');
            break;

        case 239: 
            decodedchar = new DecodedChar(i + 8, '*');
            break;

        case 240: 
            decodedchar = new DecodedChar(i + 8, '+');
            break;

        case 241: 
            decodedchar = new DecodedChar(i + 8, ',');
            break;

        case 242: 
            decodedchar = new DecodedChar(i + 8, '-');
            break;

        case 243: 
            decodedchar = new DecodedChar(i + 8, '.');
            break;

        case 244: 
            decodedchar = new DecodedChar(i + 8, '/');
            break;

        case 245: 
            decodedchar = new DecodedChar(i + 8, ':');
            break;

        case 246: 
            decodedchar = new DecodedChar(i + 8, ';');
            break;

        case 247: 
            decodedchar = new DecodedChar(i + 8, '<');
            break;

        case 248: 
            decodedchar = new DecodedChar(i + 8, '=');
            break;

        case 249: 
            decodedchar = new DecodedChar(i + 8, '>');
            break;

        case 250: 
            decodedchar = new DecodedChar(i + 8, '?');
            break;

        case 251: 
            decodedchar = new DecodedChar(i + 8, '_');
            break;

        case 252: 
            decodedchar = new DecodedChar(i + 8, ' ');
            break;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    private DecodedNumeric decodeNumeric(int i)
    {
        DecodedNumeric decodednumeric;
        if(i + 7 > information.size)
        {
            int i1 = extractNumericValueFromBitArray(i, 4);
            if(i1 == 0)
                decodednumeric = new DecodedNumeric(information.size, 10, 10);
            else
                decodednumeric = new DecodedNumeric(information.size, i1 - 1, 10);
        } else
        {
            int j = extractNumericValueFromBitArray(i, 7);
            int k = (j - 8) / 11;
            int l = (j - 8) % 11;
            decodednumeric = new DecodedNumeric(i + 7, k, l);
        }
        return decodednumeric;
    }

    static int extractNumericValueFromBitArray(BitArray bitarray, int i, int j)
    {
        if(j > 32)
            throw new IllegalArgumentException("extractNumberValueFromBitArray can't handle more than 32 bits");
        int k = 0;
        for(int l = 0; l < j; l++)
            if(bitarray.get(i + l))
                k |= 1 << -1 + (j - l);

        return k;
    }

    private boolean isAlphaOr646ToNumericLatch(int i)
    {
        boolean flag = false;
        if(i + 3 <= information.size) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        for(int j = i; j < i + 3; j++)
            if(information.get(j))
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isAlphaTo646ToAlphaLatch(int i)
    {
        boolean flag = false;
        if(i + 1 <= information.size) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        for(int j = 0; j < 5 && j + i < information.size;)
            if(j != 2 ? !information.get(i + j) : information.get(i + 2))
                j++;
            else
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isNumericToAlphaNumericLatch(int i)
    {
        boolean flag = false;
        if(i + 1 <= information.size) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        for(int j = 0; j < 4 && j + i < information.size; j++)
            if(information.get(i + j))
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isStillAlpha(int i)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        if(i + 5 <= information.size) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        int j = extractNumericValueFromBitArray(i, 5);
        if(j >= 5 && j < 16)
            flag1 = flag;
        else
        if(i + 6 <= information.size)
        {
            int k = extractNumericValueFromBitArray(i, 6);
            if(k < 16 || k >= 63)
                flag = false;
            flag1 = flag;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isStillIsoIec646(int i)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        if(i + 5 <= information.size) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        int j = extractNumericValueFromBitArray(i, 5);
        if(j >= 5 && j < 16)
            flag1 = flag;
        else
        if(i + 7 <= information.size)
        {
            int k = extractNumericValueFromBitArray(i, 7);
            if(k >= 64 && k < 116)
                flag1 = flag;
            else
            if(i + 8 <= information.size)
            {
                int l = extractNumericValueFromBitArray(i, 8);
                if(l < 232 || l >= 253)
                    flag = false;
                flag1 = flag;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isStillNumeric(int i)
    {
        boolean flag = true;
        if(i + 7 <= information.size) goto _L2; else goto _L1
_L1:
        if(i + 4 > information.size)
            flag = false;
_L4:
        return flag;
_L2:
        for(int j = i; j < i + 3; j++)
            if(information.get(j))
                continue; /* Loop/switch isn't completed */

        flag = information.get(i + 3);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private BlockParsedResult parseAlphaBlock()
    {
_L3:
        DecodedChar decodedchar;
        if(!isStillAlpha(current.position))
            break MISSING_BLOCK_LABEL_95;
        decodedchar = decodeAlphanumeric(current.position);
        current.position = decodedchar.getNewPosition();
        if(!decodedchar.isFNC1()) goto _L2; else goto _L1
_L1:
        BlockParsedResult blockparsedresult = new BlockParsedResult(new DecodedInformation(current.position, buffer.toString()), true);
_L4:
        return blockparsedresult;
_L2:
        buffer.append(decodedchar.getValue());
          goto _L3
        if(isAlphaOr646ToNumericLatch(current.position))
        {
            CurrentParsingState currentparsingstate1 = current;
            currentparsingstate1.position = 3 + currentparsingstate1.position;
            current.setNumeric();
        } else
        if(isAlphaTo646ToAlphaLatch(current.position))
        {
            if(5 + current.position < information.size)
            {
                CurrentParsingState currentparsingstate = current;
                currentparsingstate.position = 5 + currentparsingstate.position;
            } else
            {
                current.position = information.size;
            }
            current.setIsoIec646();
        }
        blockparsedresult = new BlockParsedResult(false);
          goto _L4
    }

    private DecodedInformation parseBlocks()
    {
        do
        {
            int i = current.position;
            BlockParsedResult blockparsedresult;
            boolean flag;
            boolean flag1;
            if(current.isAlpha())
            {
                blockparsedresult = parseAlphaBlock();
                flag = blockparsedresult.isFinished();
            } else
            if(current.isIsoIec646())
            {
                blockparsedresult = parseIsoIec646Block();
                flag = blockparsedresult.isFinished();
            } else
            {
                blockparsedresult = parseNumericBlock();
                flag = blockparsedresult.isFinished();
            }
            if(i != current.position)
                flag1 = true;
            else
                flag1 = false;
            while(!flag1 && !flag || flag) 
                return blockparsedresult.getDecodedInformation();
        } while(true);
    }

    private BlockParsedResult parseIsoIec646Block()
    {
_L3:
        DecodedChar decodedchar;
        if(!isStillIsoIec646(current.position))
            break MISSING_BLOCK_LABEL_95;
        decodedchar = decodeIsoIec646(current.position);
        current.position = decodedchar.getNewPosition();
        if(!decodedchar.isFNC1()) goto _L2; else goto _L1
_L1:
        BlockParsedResult blockparsedresult = new BlockParsedResult(new DecodedInformation(current.position, buffer.toString()), true);
_L4:
        return blockparsedresult;
_L2:
        buffer.append(decodedchar.getValue());
          goto _L3
        if(isAlphaOr646ToNumericLatch(current.position))
        {
            CurrentParsingState currentparsingstate1 = current;
            currentparsingstate1.position = 3 + currentparsingstate1.position;
            current.setNumeric();
        } else
        if(isAlphaTo646ToAlphaLatch(current.position))
        {
            if(5 + current.position < information.size)
            {
                CurrentParsingState currentparsingstate = current;
                currentparsingstate.position = 5 + currentparsingstate.position;
            } else
            {
                current.position = information.size;
            }
            current.setAlpha();
        }
        blockparsedresult = new BlockParsedResult(false);
          goto _L4
    }

    private BlockParsedResult parseNumericBlock()
    {
_L1:
        BlockParsedResult blockparsedresult;
        DecodedNumeric decodednumeric;
        if(!isStillNumeric(current.position))
            break MISSING_BLOCK_LABEL_184;
        decodednumeric = decodeNumeric(current.position);
        current.position = decodednumeric.getNewPosition();
        if(decodednumeric.isFirstDigitFNC1())
        {
            DecodedInformation decodedinformation;
            if(decodednumeric.isSecondDigitFNC1())
                decodedinformation = new DecodedInformation(current.position, buffer.toString());
            else
                decodedinformation = new DecodedInformation(current.position, buffer.toString(), decodednumeric.getSecondDigit());
            blockparsedresult = new BlockParsedResult(decodedinformation, true);
        } else
        {
label0:
            {
                buffer.append(decodednumeric.getFirstDigit());
                if(!decodednumeric.isSecondDigitFNC1())
                    break label0;
                blockparsedresult = new BlockParsedResult(new DecodedInformation(current.position, buffer.toString()), true);
            }
        }
_L2:
        return blockparsedresult;
        buffer.append(decodednumeric.getSecondDigit());
          goto _L1
        if(isNumericToAlphaNumericLatch(current.position))
        {
            current.setAlpha();
            CurrentParsingState currentparsingstate = current;
            currentparsingstate.position = 4 + currentparsingstate.position;
        }
        blockparsedresult = new BlockParsedResult(false);
          goto _L2
    }

    String decodeAllCodes(StringBuffer stringbuffer, int i)
        throws NotFoundException
    {
        int j = i;
        String s = null;
        do
        {
            DecodedInformation decodedinformation = decodeGeneralPurposeField(j, s);
            stringbuffer.append(FieldParser.parseFieldsInGeneralPurpose(decodedinformation.getNewString()));
            if(decodedinformation.isRemaining())
                s = String.valueOf(decodedinformation.getRemainingValue());
            else
                s = null;
            if(j == decodedinformation.getNewPosition())
                return stringbuffer.toString();
            j = decodedinformation.getNewPosition();
        } while(true);
    }

    DecodedInformation decodeGeneralPurposeField(int i, String s)
    {
        buffer.setLength(0);
        if(s != null)
            buffer.append(s);
        current.position = i;
        DecodedInformation decodedinformation = parseBlocks();
        DecodedInformation decodedinformation1;
        if(decodedinformation != null && decodedinformation.isRemaining())
            decodedinformation1 = new DecodedInformation(current.position, buffer.toString(), decodedinformation.getRemainingValue());
        else
            decodedinformation1 = new DecodedInformation(current.position, buffer.toString());
        return decodedinformation1;
    }

    int extractNumericValueFromBitArray(int i, int j)
    {
        return extractNumericValueFromBitArray(information, i, j);
    }

    private final StringBuffer buffer = new StringBuffer();
    private final CurrentParsingState current = new CurrentParsingState();
    private final BitArray information;
}
